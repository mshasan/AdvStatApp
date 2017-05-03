* STAT 6420 Fall 2012;
* Prototype SAS program for Problem 1 of HW2;

data sb;
  infile 'sb427.txt' firstobs=2;
  input RUNS ORUN HIT ERR RES $;
  DIFF=RUNS-ORUN; 
run; quit;

proc print data=sb (obs=7);
run; quit;


* (a), this helps solve part (a);
proc freq data=sb;
table RES / norow nocol nopercent nocum;
run; quit;

* (b), obtain the corr matrix;
proc corr data=sb;
  var DIFF RUNS ORUN HIT ERR;
run; quit;


* (c), Simple regression of RUNS on HIT. (d), lack-of-fit test;
* One will need to combine the REG and ANOVA results to perform lack-of-fit teat;
proc reg data=sb;
  model RUNS = HIT /  p cli;   * e.g. for Obs 27, HIT=15;
run; quit;

proc anova data=sb;
  class HIT;
  model RUNS = HIT;
run; quit;

* counts # of points in PI (if bounds were correct);
proc print data=sb;
  where (HIT=15) & (RUNS>8.5 & RUNS<14.5);    * Note: the bounds used are fictitious;
  var RUNS HIT;
run; quit;

 * counts # of points outside of PI (if bounds were correct);
proc print data=sb;
   where (((HIT=15) & (RUNS < 8.5)) OR ((HIT=15) & (RUNS>14.5))); *Note fictitious bounds;
   var RUNS HIT;
run; quit;

* (e), simple regression of ORUN on ERR;
proc reg data=sb;
  model ORUN = ERR;
run; quit;


* (f), multiple regression of DIFF on HIT and ERR;
proc reg data=sb; 
  model DIFF = HIT ERR;
  output out=sb_pred p=PDIFF_f;
run; quit;


* (g), alternative proposed model;
* One must input correct coefficients (derived from (c) and (e)) for PDIFF_g;
* Also, the squared_error variable calculates the squared error for each observation;
* one would still need to calculate SSE in order to obtain RMSE and R-Squared, in order
* to compare those with what was found from model (f);
data sb2;
  set sb;
  PDIFF_g=-4.123+0.885*HIT-1.168*ERR;    * Note: the coefficients used are fictitious;
  squared_error=(DIFF-PDIFF_g)**2;
run; quit;

proc print data=sb2;
 var hit err diff pdiff_g squared_error;
 run; quit;


* (h), classification. This helps solve part (h);
data sb_pred;
  set sb_pred;
  if PDIFF_f>0 then PRES='W';
  if PDIFF_f<0 then PRES='L';
run; quit;

proc freq DATA=sb_pred;
  tables RES*PRES /norow nocol nopercent nocum;
run; quit;
