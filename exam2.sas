data sbruns;
  infile 'sbruns.txt' firstobs=2;
  input Runs Games Won Lost;
run;

proc print data=sbruns;
run;
