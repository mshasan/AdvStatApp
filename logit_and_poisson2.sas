proc import out=survey datafile="survey.xlsx" dbms=excel replace;
getnames=yes;
run;
proc import out=adjsurvey datafile="adjsurvey.xlsx" dbms=excel replace;
getnames=yes;
run;
proc print data = adjsurvey;
run;
data survey2;
set adjsurvey;
total=S+N;
run;

* logistic model;
proc logistic data = survey2;
class L R G A;
model S/total = L R G A R*G/ scale = none;
run;

proc genmod data = survey2;
class L R G A;
model S/total = L R G A R*G/ dist=b link=logit type3;
run;

* log linear model;
proc genmod data = survey;
class S L R G A;
model count = S L|R|G|A G*R*S A*S L*S R*S G*S/ dist=poisson link=log type3;
run;
