data beetle;
input LogDos NumExp NumKill;
prop = NumKill/NumExp;
cards;
1.6907 59 6
1.7242 60 13
1.7552 62 18
1.7842 56 28
1.8113 63 52
1.8369 59 53
1.861 62 61
1.8839 60 60
; 
proc print data=beetle;
run;

* data summary;
*plotting data/ scatter plot;
proc plot data=beetle vpercent=50 hpercent=50;
plot prop*LogDos='*';
run;

* fitting model with logit link;
proc genmod data=beetle;
model NumKill/NumExp = LogDos/link=logit err=binomial;
output out=resdata p = preds RESCHI = rawres;
run;

* plottting observed and fitted values;
proc plot data=resdata vpercent=75 hpercent=75;
  plot prop*LogDos='O' 
		preds*LogDos='P'/overlay;
run;


* fitting model with logit link and pearson scale;
proc genmod data=beetle;
model NumKill/NumExp = LogDos/link=logit err=binomial scale=p;
output out=resdata1 p = preds1 RESCHI = rawres1;
run;

* plottting observed and fitted values, when peaeson scale is used;
proc plot data=resdata1 vpercent=50 hpercent=50;
  plot prop*LogDos='O' 
		preds1*LogDos='P'/overlay;
run;


* getting constructed varible;
data gdLinkTest;
	set resdata;
	logitfit=NumExp*preds;
	z = -(1+preds**(-1)*log(1-preds));
run;

* fitting model with constructed variable;
proc genmod data=gdLinkTest;
model NumKill/NumExp = LogDos z /link=logit err=binomial;
output out=resdata2 p = preds2 RESCHI = rawres2; 
run;

*plotting observed and fitted data for reconstructed model;
proc plot data=resdata2 vpercent=75 hpercent=75;
  plot prop*LogDos='O' 
		preds2*LogDos='P'/overlay;
run;


* fitting final model with c-log-log link;
proc genmod data=gdLinkTest;
model NumKill/NumExp = LogDos /link=cll err=binomial;
output out=resdata3 p = preds3 RESCHI = rawres3; 
run;

*plotting observed and fitted data from c-log-log model;
proc plot data=resdata3 vpercent=75 hpercent=75;
  plot prop*LogDos='O' 
		preds3*LogDos='P'/overlay;
run;


proc iml;
*deviance diff between constructed var. and logit model (11.2322-2.9528);
pvalue1=1-probchi(8.2794, 1);
*deviance diff between constructed var. and logit-scaled model (6-3.215);
pvalue2=1-probchi(3.215, 1);
*deviance diff between c-l-l and logit model (11.2322-3.4464);
pvalue3=1-probchi(7.7858, 1);
*deviance diff between c-l-l and constructed var. model (3.4464 - 2.9528);
pvalue4=1-probchi(.4936, 1);
print pvalue1 pvalue2 pvalue3 pvalue4;
run;
quit;
* skew fit dat;
data skewfit;
	set resdata3;
	skewfit=preds3*NumExp;
run;
