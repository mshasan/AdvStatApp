data infsurv;
input A	S	G	I count;
cards;
1	1	1	1	50
1	1	1	2	315
1	1	2	1	24
1	1	2	2	4012
1	2	1	1	9
1	2	1	2	40
1	2	2	1	6
1	2	2	2	459
2	1	1	1	41
2	1	1	2	147
2	1	2	1	14
2	1	2	2	1594
2	2	1	1	4
2	2	1	2	11
2	2	2	1	1
2	2	2	2	124
;
run;
proc print data = infsurv;
run;

* problem - b *************************************************************;
* (AGIS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S|G|I /type1 type3 dist=poisson link=log;
run;

* (AGI, AIS, AGS, GIS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G|I A|I|S A|G|S G|I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AI, AS, GI, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AS, G, I) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G I /type1 type3 dist=poisson link=log;
run;

proc iml;
cpval1=1-probchi(.3593, 1);
cpval2=1-probchi(1.3632, 4);
cpval3=1-probchi(358.4567, 5);
print cpval1 cpval2 cpval3;
run;
quit;

* problem - c *************************************************************;
* forward selection;
*1st step;
* (AS, G, I) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G I /type1 type3 dist=poisson link=log;
run;

* (AS, G, I) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G I /type1 type3 dist=poisson link=log;
run;

* (AS, AG, I) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S A|G I /type1 type3 dist=poisson link=log;
run;

* (AS, G, AI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G A|I /type1 type3 dist=poisson link=log;
run;

* include AI term then (AS, GI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I /type1 type3 dist=poisson link=log;
run;

* (AS, GS, I) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|S I /type1 type3 dist=poisson link=log;
run;

* (AS, IS, G) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G I|S /type1 type3 dist=poisson link=log;
run;


proc iml;
p1=1-probchi(7.0137, 1);
p2=1-probchi(10.1255, 1);
p3=1-probchi(342.3339, 1);
p4=1-probchi(0.5247, 1);
p5=1-probchi(2.3894, 1);
print p1 p2 p3 p4 p5;
run;
quit;

*2nd step;
* (AS, GI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I /type1 type3 dist=poisson link=log;
run;

* (AS, GI, AG) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|G /type1 type3 dist=poisson link=log;
run;

* (AS, GI, AI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|I /type1 type3 dist=poisson link=log;
run;

* (AS, GI, GS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I G|S /type1 type3 dist=poisson link=log;
run;

* (AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I I|S /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(7.0137, 1);
p2=1-probchi(10.1255, 1);
p3=1-probchi(0.5248, 1);
p4=1-probchi(2.3894, 1);
print p1 p2 p3 p4 ;
run;
quit;

*3rd step;
* (AS, GI, AI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|I /type1 type3 dist=poisson link=log;
run;

* (AS, GI, AI, AG) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|I A|G /type1 type3 dist=poisson link=log;
run;

* (AS, GI, AI, GS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|I G|S /type1 type3 dist=poisson link=log;
run;

* (AS, GI, AI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S G|I A|I I|S /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(2.9264, 1);
p2=1-probchi(0.6033, 1);
p3=1-probchi(2.9711, 1);
print p1 p2 p3 ;
run;
quit;



* forward selection;
*1st step see the problem b;
* 2nd step;
* (AG, AI, AS, GI, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AI, AS, GI, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I A|S G|I G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AS, GI, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|S G|I G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AI, GI, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I G|I G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AI, AS, GS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|S I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AI, AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I I|S /type1 type3 dist=poisson link=log;
run;

* (AG, AI, AS, GI, GS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I G|S /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(7.0137, 1);
p2=1-probchi(10.1255, 1);
p3=1-probchi(18.2388, 1);
p4=1-probchi(337.6054, 1);
p5=1-probchi(0.0996, 1);
p6=1-probchi(2.3298, 1);
print p1 p2 p3 p4, p5, p6;
run;
quit;

* 3rd step;
* start from (AG, AI, AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I I|S /type1 type3 dist=poisson link=log;
run;

* (AI, AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I A|S G|I I|S /type1 type3 dist=poisson link=log;
run;

*(AG, AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|S G|I I|S /type1 type3 dist=poisson link=log;
run;

*(AG, AI,GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I G|I I|S /type1 type3 dist=poisson link=log;
run;

*(AG, AI, AS, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S I|S /type1 type3 dist=poisson link=log;
run;

*(AG, AI, AS, GI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|G A|I A|S G|I /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(2.9265, 1);
p2=1-probchi(6.4798, 1);
p3=1-probchi(18.0126, 1);
p4=1-probchi(338.2468, 1);
p5=1-probchi(2.9712, 1);
print p1 p2 p3 p4, p5;
run;
quit;


* 4th step;
* start from (AI, AS, GI, IS) log linear model;
* (AI, AS, GI, IS) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|S A|I G|I I|S /type1 type3 dist=poisson link=log;
run;

* (AI, AS, IS, G) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I A|S I|S G /type1 type3 dist=poisson link=log;
run;

* (AI, AS, GI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I A|S G|I /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(10.7073, 1);
p2=1-probchi(342.334, 1);
p3=1-probchi(2.9711, 1);
print p1 p2 p3;
run;
quit;

* 5th step;
* (AI, GI) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I G|I /type1 type3 dist=poisson link=log;
run;

* (AI, AS G) log linear model;
proc genmod data = infsurv;
class A S G I;
model count = A|I A|S G /type1 type3 dist=poisson link=log;
run;

proc iml;
p1=1-probchi(10.1256, 1);
p2=1-probchi(342.334, 1);
print p1 p2;
run;
quit;


