proc import out=Color datafile="Color.xls" DBMS=xls REPLACE;
     getnames=YES;
proc print;
run;

* (e) (f) (g) (h);
proc anova data=Color;
class Color Outfit Wearer;
model Score = Color Outfit Wearer;
means Color Outfit Wearer;
means Color / lsd TUKEY;
run;

PROC IMPORT OUT= WORK.auto1 DATAFILE= "C:\auto.xls" 
            DBMS=xls REPLACE;
     SHEET="auto1"; 
     GETNAMES=YES;
RUN;
