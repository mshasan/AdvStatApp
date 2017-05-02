data ames;
input x y; * here, x=dose and y = number of revertant colonies;
log_xc = log(x+10);
cards;
0 15 
0 21 
0 29 
10 16 
10 18 
10 21 
33 16 
33 26 
33 33
100 27 
100 41 
100 60 
333 33 
333 38 
333 41 
1000 20 
1000 27 
1000 42
;
run;
proc print data = ames;
run;

* problem (a);
* poisson regression unscaled;
proc genmod data = ames;
*class log_xc x;
model y = log_xc x/type1 type3 dist = poisson link=log;
run;

* poisson regression with pearson scale;
proc genmod data = ames;
*class log_xc x;
model y = log_xc x/type1 type3 dist = poisson link=log scale = pearson p r;
output out=resdata1 p = preds1 RESCHI = rawres1 ; 
run;

* plotting qq2 plot to check goodness of fit;
proc sort data = resdata1;
  by rawres1;
run;

* also proc univariate used to draw QQ plot;
data qq1;
  set resdata1;
  if (_N_>1 & _N_<18) then 
    phiinv1 = probit((_N_-0.3175)/(18+.365)); /* sample size is 18 */
  else if (_N_=1) then
    phiinv1 = probit(1-(.5**(1/18)));
  else 
    phiinv1=probit(.5**(1/18));
run;

title 'Q-Q plot for raw residuals';
proc plot data=qq1;
  plot rawres1*phiinv1='*';
run;

* checking Filliben correlation (high is good);
title 'Correlation between observed and expected quantiles for';
title2 '(Fillibens Correlation Coefficient)';
proc corr data=qq1 noprob nosimple;
  var rawres1 phiinv1;
run;
title;
title2;

/* predicted vs residual plots for poisson;
title 'residuals vs predicted';
proc plot data=qq1;
  plot preds1*rawres1='*';
run;*/

*negative binomial regression without scale;
proc genmod data = ames;
*class log_xc x;
model y = log_xc x/type1 type3 dist = nb link=log ;
run;


* problem (b);
*negative binomial regression;
proc genmod data = ames;
*class log_xc x;
model y = log_xc x/type1 type3 dist = nb link=log scale = pearson p r;
output out=resdata2 p = preds2 RESCHI = rawres2 ; 
run;


* plotting qq2 plot to check goodness of fit;
proc sort data = resdata2;
  by rawres2;
run;

* also proc univariate used to draw QQ plot;
data qq2;
  set resdata2;
  if (_N_>1 & _N_<18) then 
    phiinv2 = probit((_N_-0.3175)/(18+.365)); /* sample size is 18 */
  else if (_N_=1) then
    phiinv2 = probit(1-(.5**(1/18)));
  else 
    phiinv2=probit(.5**(1/18));
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

/* predicted vs residual plots;
title 'residuals vs predicted';
proc plot data=qq3;
  plot preds3*rawres3='*';
run;*/


* problem (c);
*testing adequacy poisson agains negative binomial;
* test reducing models;
proc iml;
*-2logL =  -2*[-68.1260) -(-62.8896)]=10.4728 ;
cpval=1-probchi(10.4728, 1);
print cpval;
run;
quit;
