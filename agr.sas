proc import out=agr 
     datafile="agr.xls"; *replace ;
     getnames=YES;
proc print;
run;


* incorrect anova;
proc anova data=agr;
  class Fert Plot;
  model Y = Fert Plot;
  means Fert Plot;
run;


proc glm data=agr;
  class Fert Plot;
  model Y = Fert Plot;
  lsmeans Fert Plot;
run;


