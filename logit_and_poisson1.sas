data survey2;
input N	S L $ R $ A $ G $;
total = N+S;
cards;
177	288	Northeast	W	a	M
45	90	Mid-At	W	a	M
128	226	Southern	W	a	M
179	285	Mid-West	W	a	M
180	270	Northwest	W	a	M
126	252	southwest	W	a	M
58	119	Pacific	W	a	M
57	60	Northeast	W	a	F
12	19	Mid-At	W	a	F
57	88	Southern	W	a	F
93	110	Mid-West	W	a	F
151	176	Northwest	W	a	F
61	97	southwest	W	a	F
33	62	Pacific	W	a	F
166	224	Northeast	W	b	M
42	96	Mid-At	W	b	M
117	189	Southern	W	b	M
141	225	Mid-West	W	b	M
108	215	Northwest	W	b	M
72	162	southwest	W	b	M
20	66	Pacific	W	b	M
19	35	Northeast	W	b	F
5	12	Mid-At	W	b	F
34	44	Southern	W	b	F
24	53	Mid-West	W	b	F
40	80	Northwest	W	b	F
27	47	southwest	W	b	F
10	20	Pacific	W	b	F
172	337	Northeast	W	c	M
39	124	Mid-At	W	c	M
73	156	Southern	W	c	M
140	324	Mid-West	W	c	M
136	269	Northwest	W	c	M
93	199	southwest	W	c	M
21	67	Pacific	W	c	M
30	70	Northeast	W	c	F
2	17	Mid-At	W	c	F
25	70	Southern	W	c	F
47	60	Mid-West	W	c	F
40	110	Northwest	W	c	F
24	62	southwest	W	c	F
10	25	Pacific	W	c	F
33	38	Northeast	O	a	M
6	18	Mid-At	O	a	M
31	45	Southern	O	a	M
25	40	Mid-West	O	a	M
20	36	Northwest	O	a	M
27	69	southwest	O	a	M
16	45	Pacific	O	a	M
35	19	Northeast	O	a	F
7	13	Mid-At	O	a	F
35	47	Southern	O	a	F
56	66	Mid-West	O	a	F
16	25	Northwest	O	a	F
36	45	southwest	O	a	F
15	22	Pacific	O	a	F
11	32	Northeast	O	b	M
2	7	Mid-At	O	b	M
3	18	Southern	O	b	M
11	19	Mid-West	O	b	M
7	9	Northwest	O	b	M
7	14	southwest	O	b	M
10	15	Pacific	O	b	M
20	22	Northeast	O	b	F
3	0	Mid-At	O	b	F
7	13	Southern	O	b	F
19	25	Mid-West	O	b	F
5	11	Northwest	O	b	F
4	8	southwest	O	b	F
8	10	Pacific	O	b	F
8	21	Northeast	O	c	M
2	9	Mid-At	O	c	M
2	11	Southern	O	c	M
2	22	Mid-West	O	c	M
3	16	Northwest	O	c	M
5	14	southwest	O	c	M
6	8	Pacific	O	c	M
10	15	Northeast	O	c	F
1	1	Mid-At	O	c	F
2	9	Southern	O	c	F
12	11	Mid-West	O	c	F
5	4	Northwest	O	c	F
0	2	southwest	O	c	F
2	6	Pacific	O	c	F
;
proc print data = survey2;
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
proc genmod data = survey2;
class L R G A;
model count = L R G A R*G/ dist=b link=logit type3;
run;
