data tribo;
input remaining	day 	egg	adult	repli	total;
cards;
25	1	1	1	1	50
26	1	1	1	2	50
26	1	1	1	3	50
29	2	1	1	1	50
28	2	1	1	2	50
27	2	1	1	3	50
26	3	1	1	1	50
20	3	1	1	2	50
14	3	1	1	3	50
24	1	2	1	1	50
14	1	2	1	2	50
24	1	2	1	3	50
14	2	2	1	1	50
13	2	2	1	2	50
19	2	2	1	3	50
10	3	2	1	1	50
7	3	2	1	2	50
14	3	2	1	3	50
15	1	3	1	1	50
26	1	3	1	2	50
32	1	3	1	3	50
32	2	3	1	1	50
19	2	3	1	2	50
16	2	3	1	3	50
13	3	3	1	1	50
15	3	3	1	2	50
23	3	3	1	3	50
25	1	1	2	1	50
31	1	1	2	2	50
24	1	1	2	3	50
14	2	1	2	1	50
18	2	1	2	2	50
13	3	1	2	1	50
18	3	1	2	2	50
8	3	1	2	3	50
15	1	2	2	1	50
22	1	2	2	2	50
12	1	2	2	3	50
8	2	2	2	1	50
12	2	2	2	2	50
6	3	2	2	1	50
11	3	2	2	2	50
5	3	2	2	3	50
22	1	3	2	1	50
33	1	3	2	2	50
30	1	3	2	3	50
13	2	3	2	1	50
20	2	3	2	2	50
14	3	3	2	1	50
19	3	3	2	2	50
12	3	3	2	3	50
35	1	1	3	1	50
36	1	1	3	2	50
33	1	1	3	3	50
24	2	1	3	1	50
38	2	1	3	2	50
34	2	1	3	3	50
21	1	2	3	1	50
19	1	2	3	2	50
16	1	2	3	3	50
24	2	2	3	1	50
24	2	2	3	2	50
36	2	2	3	3	50
28	1	3	3	1	50
34	1	3	3	2	50
31	1	3	3	3	50
23	2	3	3	1	50
27	2	3	3	2	50
27	2	3	3	3	50
;
run;
proc print data = tribo;
run;

data tribo1;
set tribo;
if egg = adult then eggsame = 1;
if egg ~=adult then eggsame = 0;
run;

proc sql;
title 'Reformat Table';
create table tribo1 as
select day, adult, eggsame, repli, sum(remaining) as remaining, sum(total) as total from tribo1
	group by day, adult, eggsame, repli;
quit;
proc print data = tribo1;
run;

proc genmod data=tribo1;
class day adult eggsame;
model remaining/total = adult eggsame adult*eggsame day(adult)/ link = logit d=binomial type3 pscale;
run;

proc genmod data=tribo1;
class day adult eggsame;
model remaining/total = adult eggsame day(adult)/ link = logit d=binomial type3; 
run;

proc genmod data=tribo;
class day adult egg;
model remaining/total = adult egg adult*egg day(adult)/ link = logit d=binomial type3 pscale;
run;



























