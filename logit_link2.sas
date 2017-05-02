data tribolium;
input species $ day egg $ y;
m =50;
if (species='A') then nspecies = 1;
if (species='C') then nspecies = 1;
if (species='B') then nspecies = 2;
if (day=1) then nday = 1;
if (day=3) then nday = 2;
if (day=2) then nday = 2;
cards;
A	1	a	25
A	1	b	24
A	1	c	15
A	1	a	26
A	1	b	14
A	1	c	26
A	1	a	26
A	1	b	24
A	1	c	32
A	2	a	29
A	2	b	14
A	2	c	32
A	2	a	28
A	2	b	13
A	2	c	19
A	2	a	27
A	2	b	19
A	2	c	16
A	3	a	26
A	3	b	10
A	3	c	13
A	3	a	20
A	3	b	7
A	3	c	15
A	3	a	14
A	3	b	14
A	3	c	23
B	1	a	25
B	1	b	15
B	1	c	22
B	1	a	31
B	1	b	22
B	1	c	33
B	1	a	24
B	1	b	12
B	1	c	30
B	2	a	14
B	2	b	8
B	2	c	13
B	2	a	18
B	2	b	12
B	2	c	20
B	3	a	13
B	3	b	6
B	3	c	14
B	3	a	18
B	3	b	11
B	3	c	19
B	3	a	8
B	3	b	5
B	3	c	12
C	1	a	35
C	1	b	21
C	1	c	28
C	1	a	36
C	1	b	19
C	1	c	34
C	1	a	33
C	1	b	16
C	1	c	31
C	2	a	24
C	2	b	24
C	2	c	23
C	2	a	38
C	2	b	24
C	2	c	27
C	2	a	34
C	2	b	36
C	2	c	27
;
run;
proc print data = tribolium;
run;

*full logistic model with all interactions;
proc logistic data = tribolium;
class species day egg;
model y/m = species | day | egg/selection = B scale = williams SLSTAY=0.05 ; 
run; 


*full logistic model with all interactions;
proc logistic data = tribolium;
class species day egg;
model y/m = species | day | egg/selection = B scale = williams SLSTAY=0.01 ; 
run;

* test reducing models;
proc iml;
*-2logL = 209.066(df=7) - (199.393(df=10)) ;
cpval=1-probchi(9.673, 3);
print cpval;
run;
quit;

* at alpha=.01 we get better model than alpha=.05. so we keep all main effect model. Because it givel less BIC, AIC and -2logL with 3 extra df


*goodnes of fit for better logistic model;
proc logistic data = tribolium;
class species day egg;
model y/m = species | day | egg/influence selection = B scale = williams SLSTAY=0.01 ; 
output out=resdata p = preds RESCHI = rawres ;
run; 


* plotting qq plot;
proc sort data = resdata;
  by rawres;
run;

* Q-Q plot to see goodness of fit;
data qq;
  set resdata;
  if (_N_>1 & _N_<69) then 
    phiinv = probit((_N_-0.3175)/(69+.365)); /* sample size is 69 */
  else if (_N_=1) then
    phiinv= probit(1-(.5**(1/69)));
  else 
    phiinv=probit(.5**(1/69));
run;

title 'Q-Q plot for raw residuals';
proc plot data=qq;
  plot rawres*phiinv='*';
run;

* checking Filliben correlation (high is good);
title 'Correlation between observed and expected quantiles for';
title2 '(Fillibens Correlation Coefficient)';
proc corr data=qq noprob nosimple;
  var rawres phiinv;
run;
title;
title2;



*goodnes of fit for better logistic model;
proc logistic data = tribolium;
class nspecies nday egg;
model y/m = nspecies nday  egg/influence selection = B scale = williams SLSTAY=0.01 ; 
output out=resdata2 p = preds2 RESCHI = rawres2 ;
run; 


* plotting qq plot;
proc sort data = resdata2;
  by rawres2;
run;

* Q-Q plot to see goodness of fit;
data qq2;
  set resdata2;
  if (_N_>1 & _N_<69) then 
    phiinv2 = probit((_N_-0.3175)/(69+.365)); /* sample size is 69 */
  else if (_N_=1) then
    phiinv2= probit(1-(.5**(1/69)));
  else 
    phiinv2=probit(.5**(1/69));
run;

title 'Q-Q plot for raw residuals';
proc plot data=qq2;
  plot rawres2*phiinv2='*';
run;

* checking Filliben correlation (high is good);
title 'Correlation between observed and expected quantiles for';
title2 '(Fillibens Correlation Coefficient)';
proc corr data=qq2 noprob nosimple;
  var rawres2 phiinv2;
run;
title;
title2;










































