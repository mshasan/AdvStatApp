DATA gasd;
INFILE 'E:\HW3\gasd96.txt' firstobs=2;
INPUT obs County $ T8 T3 T5 ENRL DENS IMTR IM IL PLUN;
RUN;
*a-b;
proc corr data=gasd;
  var T8 T3 T5 ENRL DENS IMTR IM IL PLUN;
run; quit;
*c;
PROC REG DATA=gasd;
MODEL T8 = T3 T5 ENRL DENS IMTR IM IL PLUN/ influence;
RUN;
*d;
PROC REG DATA=gasd;
MODEL T8 = T3 T5 ENRL DENS IMTR IM IL PLUN/ selection = backward sls = .1;
RUN;

PROC REG DATA=gasd;
MODEL T8 = T3 T5 PLUN/ influence;
RUN;

*e;
PROC REG DATA=gasd;
MODEL T8 = T3 T5 ENRL DENS IMTR IM IL PLUN/ SSE MSE PRESS selection = rsquare;
RUN;
PROC REG DATA=gasd;
MODEL T8 = T3 T5 ENRL DENS IMTR IM IL PLUN/ selection = cp;
RUN;
