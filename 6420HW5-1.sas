* (a) read the data in;
data usedcar;
  infile "usedcar.dat";
  input Age $ Price1 Price2 Price3 Price4 Price5 Price6 Price7 Price8 Price9 Price10 Price11 Price12;
proc print;
run;

proc sort data=usedcar;
  by Age;
proc transpose data=usedcar out=usedcar;
  by Age;
proc print;
run;

data usedcar;
  set usedcar;
  drop _NAME_;
  rename COL1=Price;
run;

* (b) dot-plot to display the data for the 3 groups;
proc gplot data=usedcar;
  plot Price*Age;
  symbol1 v=dot;
run;

* (c)~(g);
proc anova data=usedcar;
  class Age;
  model Price = Age;
  means age;
  means age / lsd cldiff alpha=0.05;    * 95% CI;
  means age / lsd cldiff alpha=0.1;    * 90% CI;
run;

* (h);
data usedcar2;
set usedcar;
if Age="Elderly" then Age1=1;
if Age="Middle" then Age1=2;
if Age="Young" then Age1=3;
run;
proc print data=usedcar2;run;

proc reg data =usedcar2;
model Price = Age1;
run;
