data soh;
  infile 'soh.txt' firstobs=2;
  input INCOME IHMOP INWH IOLD R N;
run;

proc print data=soh;
run;

*** (a) fit 6 models   ---------------------------------------------------;
* Model 0: null model;
proc logistic data=soh;
  model R/N = ;
run;

* Model 1a;
proc logistic data=soh;
  model R/N = INCOME;
run;

* Model 1b;
proc logistic data=soh;
  model R/N = IHMOP;
run;

* Model 1c;
proc logistic data=soh;
  model R/N = INWH;
run;

* Model 1d;
proc logistic data=soh;
  model R/N = IOLD;
run;

* Model 2;
proc logistic data=soh;
  model R/N = IOLD INCOME IHMOP INWH;
run;



*** (h);
proc logistic data=soh;
  model R/N = IOLD INCOME IHMOP INWH / lackfit;
run;
