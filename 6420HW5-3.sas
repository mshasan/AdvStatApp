data progest;
  infile "progest.dat" firstobs=2;
  input Syst $ Exp $ Error;
proc print;
run;

proc anova data=progest;
  class Syst Exp;
  model Error = Syst Exp Syst*Exp;
  means Syst*Exp;
run;
