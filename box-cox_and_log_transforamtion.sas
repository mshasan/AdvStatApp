options ls=78 nodate;

data drc;
  input dose m y;
ldose=log(dose+.001);
py=(y+.5)/(m+1);
tpy=log(py/(1-py));
cards;
0 49 0
2.6 50 6
3.8 48 16
5.1 46 24
7.7 49 42
10.2 50 44
;
run;
* complementary log-log model;
proc genmod data=drc;
model y/m=ldose/dist=binomial link=cloglog lrci;
run;
