data softball;
input OBS  YR SE GM $ MON DAY TM FLD IP RUNS ORUN HIT ERR RES $;
cards;    
1     1  83 SP  1   4  17  5   1  5   12   12  13   5   T
2     2  83 SP  2   4  24  5   2  6   13    2  17   3   W
3     3  83 SP  3   5   1  5   3  7   12    6  19   4   W
4     4  83 SP  4   5  15  5   4  5    2   23   8   6   L
5     5  83 SP  5   5  22  2   2  6   10    8  17   4   W
6     6  83 SP  6   5  22  3   3  6    6   17   7   5   L
7     7  83 SM  1   7   7  5   1  5    3    7   8   3   L
8     8  83 SM  2   7  14  6   3  7    6    5   5   3   W
9     9  83 SM  3   7  21  5   2  7    3    0  13   3   W
10   10  83 SM  4   7  28  6   5  6    6   19  13   6   L
11   11  83 SM  5   8   4  5   1  6    7   10  16   6   L
12   12  84 SP  1   4  15  6   4  6    2    6   7   4   L
13   13  84 SP  2   4  29  6   3  7    2    5  10   3   L
14   14  84 SP  3   5   6  6   3  6    9    4  16   2   W
15   15  84 SP  4   5  13  6   4  5   19   10  25   5   W
16   16  84 SP  5   5  20  5   2  5   13    4  19   3   W
17   17  84 SP  6   5  20  7   1  7    5   12   9   4   L
18   18  84 SM  1   7  11  6   5  8   10    8  16   3   W
19   19  84 SM  2   7  18  6   5  7    9   15  13   3   L
20   20  84 SM  3   7  25  6   5  7   19    5  22   3   W
21   21  84 SM  4   7  25  7   5  7    8    1  14   1   W
22   22  84 SM  5   8   9  5   5  6   20    8  22   2   W
23   23  84 SM  6   8  10  5   5  7   17    2  19   1   W
24   24  84 SM  7   8  13  6   5  7    8    7  14   0   W
25   25  85 SP  1   4  14  5   2  5    2    9   5   3   L
26   26  85 SP  2   4  21  6   3  6   14    5  18   2   W
27   27  85 SP  3   4  28  6   2  5    9    8  15   5   W
28   28  85 SP  4   5   5  5   1  5   18    5  19   3   W
29   29  85 SP  5   5  19  5   4  5   20    7  22   1   W
30   30  85 SP  6   5  19  7   2  6    8    6  15   5   W
31   31  85 SP  7   5  26  5   2  7   14    7  13   2   W
32   32  85 SP  8   5  26  6   2  7   18    2  14   0   W
33   33  85 SM  1   6  26  5   5  7   13    5  17   4   W
34   34  85 SM  2   7  10  6   5  7   12   11  18   4   W
35   35  85 SM  3   7  10  7   5  7    5   11   9   7   L
36   36  85 SM  4   7  17  7   5  5   30    3  31   0   W
37   37  85 SM  5   7  24  5   5  6   21    8  25   1   W
38   38  85 SM  6   7  24  7   5  7   15   10  19   3   W
39   39  85 SM  7   7  30  5   5  7    6    8  13   4   L
40   40  86 SP  1   4  20  5   2  4   11   14  11   3   L
41   41  86 SP  2   4  27  5   1  6    5    2   7   2   W
42   42  86 SP  3   5   4  5   2  6    1    8   3   5   L
43   43  86 SP  4   5  18  5   2  5    9    3   8   7   W
44   44  86 SP  5   5  25  5   3  6    8    9  11   5   L
45   45  86 SP  6   4  20  6   2  4   11   10  10   3   W
46   46  86 SP  7   4  27  6   1  6    2    8   6   4   L
47   47  86 SP  8   5   4  6   2  6    4   12  11   4   L
48   48  86 SP  9   5  18  6   2  5   12    4  13   3   W
49   49  86 SP 10   5  25  6   1  5   10    5  17   2   W
50   50  86 SP 11   6   1  5   2  7   12   15  14   4   L
51   51  86 SM  1   7  10  5   2  4   14    3  14   0   W
52   52  86 SM  2   7  17  5   1  6    7    2  12   4   W
53   53  86 SM  3   7  24  5   1  4   11    5   8   0   W
54   54  86 SM  4   7  31  5   2  7   14    6  17   1   W
55   55  86 SM  5   8   7  6   2  6   13    7  15   6   W
56   56  86 SM  6   8  14  5   2 10    3    4  11   6   L
57   57  87 SP  1   4  26  5   3  6    2    4   6   6   L
58   58  87 SP  2   5   3  5   4  6    4    7  12   3   L
59   59  87 SP  3   5  17  5   4  5    6   13  12   6   L
60   60  87 SP  4   5  24  5   3  8   12   10  23   9   W
61   61  87 SP  5   5  31  3   3  7   11    6  14   3   W
62   62  87 SP  6   5  31  4   2  8   10    9  15   4   W
63   63  87 SP  7   5  31  6   1  7   13    4  19   1   W
64   64  87 SM  1   7   1  6   2  6    2    9  11   6   L
65   65  87 SM  2   7   8  6   2  7    3    6   7   5   L
66   66  87 SM  3   7  15  6   3  7    4    3  10   3   W
67   67  87 SM  4   7  29  6   3  8    4    4  13   3   T
68   68  87 SM  5   8   5  5   1  7    9    2  15   1   W
69   69  87 SM  6   8  12  5   2  7    6   12  15   7   L
70   70  88 SP  1   4  17  7   2  6    6    6  15   8   T
71   71  88 SP  2   5   1  6   2  5   15    8  20   3   W
72   72  88 SP  3   5  15  4   2  7    3    6   6   6   L
73   73  88 SP  4   5  15  6   1  6   16    4  19   1   W
74   74  88 SP  5   5  22  3   1  5   12   10  18   3   W
75   75  88 SP  6   5  22  4   4  7   15   14  23   7   W
76   76  88 SP  7   5  22  6   1  7    5   13  11   4   L
77   77  88 SM  1   6  28  6   2  6   13    1  16   1   W
78   78  88 SM  2   7   5  6   3  7    4   11   9   7   L
79   79  88 SM  3   7  19  6   3  6    5    8  12   6   L
80   80  88 SM  4   7  19  7   2  6    4    6  12   5   L
81   81  88 SM  5   7  26  6   2  7    5    1   9   4   W
82   82  88 SM  6   8   2  5   4  7    2    6  12   6   L
83   83  89 SP  1   4  23  1   4  5    9    8  12   3   W
84   84  89 SP  2   4  30  1   1  6   16    4  21   3   W
85   85  89 SP  3   5   7  1   1  5   15    5  17   3   W
86   86  89 SP  4   5  21  1   1  5    8   11  14   1   L
87   87  89 SP  5   5  28  1   3  5   12   14  15   9   L
88   88  89 SM  1   6  27  5   3  7    7   14  15   7   L
89   89  89 SM  2   7  11  5   1  6   14    2  20   2   W
90   90  89 SM  3   7  18  5   2  9   11   16  18  10   L
91   91  89 SM  4   7  25  5   2  6   10    1  18   0   W
92   92  89 SM  5   8   1  6   2  6   15    3  16   1   W
93   93  89 SM  6   8   1  7   2  7    2    6   9   5   L
94   94  90 SP  1   4  22  1   2  6   14    7  16   4   W
95   95  90 SP  2   4  29  1   4  4   16    2  20   1   W
96   96  90 SP  3   5   6  1   2  5   12    7  16   3   W
97   97  90 SP  4   5  20  1   3  5   10    9  11   3   W
98   98  90 SP  5   5  27  1   2  5    1   17   5   2   L
99   99  90 SM  1   7   3  5   2  5    7    4  10   2   W
100 100  90 SM  2   7  10  5   2  5    6    1  12   3   W
101 101  90 SM  3   7  24  6   2  6    4    9  12   5   L
102 102  90 SM  4   7  31  6   2  6    1   13   5   6   L
103 103  90 SM  5   8   1  6   2  5    7    3  11   1   W
104 104  90 SM  6   8   7  5   2  7   13    7  15   3   W
105 105  90 SM  7   8   8  6   2  7    2   10  11   5   L
106 106  91 SP  1   4  21  1   2  5    7    5  12   4   W
107 107  92 SP  1   4  12  2   2  4   10    2  11   5   W
108 108  92 SP  2   4  26  2   1  4    4   12   9   6   L
109 109  92 SP  3   5   3  2   2  5    8    9  12   4   L
110 110  92 SP  4   5  17  2   2  4    7    8  12   6   L
111 111  92 SP  5   5  24  4   4  7    7   12  15   6   L
112 112  92 SM  1   6  24  5   1  6   10   19   8   9   L
113 113  92 SM  2   7   8  5   4  7    5    4  11   4   W
114 114  92 SM  3   7  14  5   4  6    5   13   7   4   L
115 115  92 SM  4   7  22  5   4  6   13    9  16   5   W
116 116  92 SM  5   7  28  5   4  7    6    1  14   2   W
117 117  92 SM  6   7  29  5   3  7    9    7  15   4   W
118 118  92 SM  7   8   4  5   3  7    2   14   8   5   L
119 119  93 SP  1   4  18  2   2  5   17    2  14   3   W
120 120  93 SP  2   4  25  2   1  5   18    2  15   2   W
121 121  93 SP  3   5   2  2   3  4   13   13  17   3   T
122 122  93 SP  4   5   7  6   2  7   13   12  18   8   W
123 123  93 SP  5   5  16  2   2  4   25    5  22   1   W
124 124  93 SP  6   5  30  3   1  7    6    4   9   3   W
125 125  93 SP  7   5  30  4   1  7   20    0  19   2   W
126 126  93 SM  1   6  30  5   2  6   24    2  25   4   W
127 127  93 SM  2   7   7  5   2  7    4    0   9   2   W
128 128  93 SM  3   7  14  5   1  6    7   17  11   6   L
129 129  93 SM  4   7  21  6   2  6   10   10  15   2   T
130 130  93 SM  5   7  28  5   2  4   15    0  17   2   W
131 131  93 SM  6   8   4  5   2  6   10   13  13   5   L
132 132  93  F  1   9  26  2   5  5    8    4  16   3   W
133 133  93  F  2  10   3  2   5  4   12    6  16   3   W
134 134  93  F  3  10  10  2   5  5   12    1  10   3   W
135 135  93  F  4  10  17  2   5  7   19   12  23   6   W
136 136  93  F  5  10  24  2   5  7    8    1  13   1   W
137 137  93  F  6  11   7  2   5  7    7    9  14   3   L
138 138  94 SP  1   4  10  2   4  4    9    4  10   4   W
139 139  94 SP  2   4  17  2   3  6    7    6  13   3   W
140 140  94 SP  3   4  24  2   2  5   18    7  19   4   W
141 141  94 SP  4   5   1  2   1  4   10    7  12   4   W
142 142  94 SP  5   5  15  2   4  5   12   10  17   4   W
143 143  94 SP  6   5  22  2   2  6   11    3  14   0   W
144 144  94 SP  7   6   2  6   2  7   13    5  16   3   W
145 145  94 SP  8   4  10  2   3  4   10    4  17   4   W
146 146  94 SP  9   4  17  2   4  5    6   12   6   2   L
147 147  94 SP 10   4  24  2   4  5   12    2  11   2   W
148 148  94 SP 11   5   1  2   3  3    6   15  12   3   L
149 149  94 SP 12   5  15  2   2  3   14   10  17   2   W
150 150  94 SP 13   5  22  2   1  4    3   14   5   4   L
151 151  94 SM  1   7   7  6   1  6   12    0  16   0   W
152 152  94 SM  2   7  13  6   1  6   17    6  17   0   W
153 153  94 SM  3   7  18  6   3  6   10    2  16   2   W
154 154  94 SM  4   7  20  6   3  6   22    0  28   2   W
155 155  94 SM  5   7  28  6   1  6   11    3  13   0   W
156 156  94 SM  6   8   2  6   1  7    5   10  16   5   L
157 157  94  F  1   9  25  2   5  6   10    6  15   4   W
158 158  94  F  2  10   9  2   5  5    8    6  12   5   W
159 159  94  F  3  10  16  2   5  7    5    4  11   4   W
160 160  94  F  4  10  16  4   5  7    5    4  13   5   W
161 161  94  F  5  10  30  3   5  7   18   11  20   5   W
162 162  94  F  6  10  30  4   5  7   14   13  17   8   W
163 163  94  F  7   9  25  2   5  4   12    3  12   2   W
164 164  94  F  8  10   9  2   5  4    3    7   6   1   L
165 165  94  F  9  10  16  3   5  6    8    5  18   2   W
166 166  94  F 10  10  23  3   5  6   10    9  17   4   W
167 167  94  F 11  10  30  3   5  6   14   13  18   3   W
168 168  94  F 12  10  30  4   5  7   13   14  16   5   L
169 169  95 SP  1   4  30  2   5  5   14    0  17   0   W
170 170  95 SP  2   5   7  1   1  4   11   10  13   8   W
171 171  95 SP  3   5   7  2   2  5   16    0  13   1   W
172 172  95 SP  4   5  19  6   1  5   16    3  18   2   W
173 173  95 SP  5   5  21  2   1  5   13    3  18   2   W
174 174  95 SP  6   5  21  3   1  5    8    6  10   2   W
175 175  95 SP  7   6   4  2   2  7   16    5  21   6   W
176 176  95 SM  1   7  11  6   3  7   12    4  16   4   W
177 177  95 SM  2   7  11  7   2  6   19    3  22   2   W
178 178  95 SM  3   7  20  6   2  5   16    5  21   3   W
179 179  95 SM  4   7  25  6   4  5   10    5  14   2   W
180 180  95 SM  5   8   1  6   2  7   14    6  21   4   W
181 181  95 SM  6   8   1  7   2  7    7    6  15   2   W
182 182  95 SM  7   8   8  6   4  7    9    5  13   1   W
183 183  96 SP  1   4  14  2   1  5    6    8   9   2   L
184 184  96 SP  2   4  21  2   5  6   11   10  14   4   W
185 185  96 SP  3   4  28  2   2  5    8    9  13   6   L
186 186  96 SP  4   5   5  1   3  6    8    3  16   4   W
187 187  96 SP  5   5   5  2   2  5   19    0  19   0   W
188 188  96 SP  6   5  19  4   2  6   14    6  17   3   W
189 189  96 SP  7   5  26  3   1  7    1   16   6   4   L
190 190  96 SM  1   7   3  7   2  5   10   11  13   6   L
191 191  96 SM  2   7  10  6   2  6   17    9  24   4   W
192 192  96 SM  3   7  10  7   1  5    7   14  12   5   L
193 193  96 SM  4   7  24  7   1  6   19    1  25   1   W
194 194  96 SM  5   8   7  6   1  6   13    8  19   4   W
195 195  96 SM  6   8   7  7   1  6   14    8  20   0   W
196 196  96 SM  7   8   8  7   1  7   11   10  19   5   W
197 197  97 SP  1   4  13  2   2  4   13    4  16   3   W
198 198  97 SP  2   4  20  2   2  4    9   10  14   5   L
199 199  97 SP  3   5   4  2   2  6    9    0  13   2   W
200 200  97 SP  4   5  18  3   2  7   29    7  37   5   W
201 201  97 SP  5   5  25  4   2  6   10    0  13   1   W
202 202  97 SP  6   6   1  2   2  7   14    7  22   0   W
203 203  97 SM  1   7   8  7   1  5   13    3  17   2   W
204 204  97 SM  2   7  15  7   2  5   18    6  25   2   W
205 205  97 SM  3   7  22  7   2  7   21   12  25   1   W
206 206  97 SM  4   7  29  7   2  5   30    1  28   1   W
207 207  97 SM  5   8   5  6   1  6   14   12  22   3   W
208 208  97 SM  6   8   5  7   2  7    6    1  13   0   W
209 209  98 SP  1   4  26  2   1  6    6    5  11   4   W
210 210  98 SP  2   5  17  2   1  4   17    6  19   5   W
211 211  98 SP  3   5  24  3   2  5   16    1  13   2   W
212 212  98 SP  4   5  31  1   2  7   14    6  24   2   W
213 213  98 SP  5   6   2  6   1  7   12    4  16   4   W
214 214  98 SM  1   6  29  7   1  7    8    7  15   2   W
215 215  98 SM  2   7   6  7   2  7    6    4  12   1   W
216 216  98 SM  3   7   8  7   2  5   12    1  15   2   W
217 217  98 SM  4   7  13  7   2  5   13    3  14   2   W
218 218  98 SM  5   7  20  7   2  6   13   20  17   6   L
219 219  98 SM  6   7  21  7   2  7    8    7  10   2   W
220 220  98 SM  7   7  22  7   2  7    7    9  13   5   L
221 221  99 SP  1   3  21  2   4  5   10    0  13   1   W
222 222  99 SP  2   3  28  2   2  4    9    7  11   4   W
223 223  99 SP  3   4  18  2   1  5   15    1  22   2   W
224 224  99 SP  4   4  18  3   2  7   13   11  20   6   W
225 225  99 SM  1   7   7  5   2  5   15    5  13   3   W
226 226  99 SM  2   7  14  5   2  7   15    4  22   0   W
227 227  99 SM  3   7  15  5   2  5    7    9  15   3   L
228 228  99 SM  4   7  21  5   1  6   20   11  21   6   W
229 229  99 SM  5   7  28  5   1  5   20    9  20   2   W
230 230  99 SM  6   7  28  7   2  7   19   15  17   4   W
231 231 100 SP  1   3  19  2   4  6    2    8  10   1   L
232 232 100 SP  2   3  26  2   5  5    9   12  15   4   L
233 233 100 SP  3   4   5  7   2  4   12   13   9   4   L
234 234 100 SP  4   4   9  2   1  5    2   15   8   3   L
235 235 100 SM  1   6  26  7   2  4   11    5  13   2   W
236 236 100 SM  2   7   5  7   2  7   15    7  23   1   W
237 237 100 SM  3   7  10  7   2  7    8   13  13   6   L
238 238 100 SM  4   7  18  7   1  6   15    5  19   4   W
239 239 100 SM  5   7  20  5   1  7    6   11  11   3   L
240 240 101 SP  1   3  18  2   4  7   10    6  15   3   W
241 241 101 SP  2   3  23  6   1  5   15    6  15   2   W
242 242 101 SP  3   3  25  2   2  5    9   13  10   5   L
243 243 101 SP  4   4   1  2   1  5    9    4  13   2   W
244 244 101 SP  5   4   8  3   2  7   15   12  18   2   W
245 245 101 SM  1   6  25  7   2  9    7    8  16   6   L
246 246 101 SM  2   7   2  7   1  5   22   12  20   6   W
247 247 101 SM  3   7   6  7   1  7   18   17  21   6   W
248 248 101 SM  4   7   9  7   1  5    1   15   7   5   L
249 249 101 SM  5   7  10  8   1  7    7    8  12   4   L
250 250 101 SM  6   7  11  7   2  7   10   13  10   6   L
251 251 101 SM  7   7  16  7   1  7    6   15  16   8   L
252 252 102 SP  1   2  24  2   1  6   14   11  20   5   W
253 253 102 SP  2   3  10  2   3  6    6    3  12   3   W
254 254 102 SP  3   4  18  9   1  5   13    8  18   3   W
255 255 102 SP  4   4  21  6   3  6   10    9  10   2   W
256 256 102 SP  5   4  22  6   2  8   14   15  13   2   L
257 257 102 SM  1   6  24  7   1  5    4   14   9   4   L
258 258 102 SM  2   7   8  7   1  4   21    4  16   1   W
259 259 102 SM  3   7  10  7   2  7    6   12  15   3   L
260 260 102 SM  4   7  15  7   2  7    5    4  11   2   W
261 261 102 SM  5   7  17  7   2  7   12   13  16   4   L
262 262 102 SM  6   7  22  7   3  7   11   13  14   2   L
263 263 103 SP  1   2  23  2   4  4   16    1  10   0   W
264 264 103 SP  2   3  30  1   1  5   16    4  17   2   W
265 265 103 SP  3   3  30  2   2  6   10    2  11   1   W
266 266 103 SP  4   4   6  2   4  6    9    4  12   3   W
267 267 103 SP  5   4  13  2   4  5    7    6   9   2   W
268 268 103 SP  6   4  17  7   4  6    9    6  13   1   W
269 269 103 SP  7   4  23  5   3  9   10   11  10   4   L
270 270 103 SM  1   6  23  7   1  7   12   11  17   4   W
271 271 103 SM  2   6  25  7   2  5   11    0  10   3   W
272 272 103 SM  3   6  30  7   3  6   17    7  25   2   W
273 273 103 SM  4   7   7  7   2  7    4    8  11   1   L
274 274 103 SM  5   7   9  7   3  7    8    8  14   3   T
275 275 103 SM  6   7   9  8   1  7    8   13  10   4   L
276 276 103 SM  7   7  14  7   1  4   17    2  16   2   W
277 277 103 SM  8   7  15  7   1  5   11    1  15   2   W
278 278 104 SP  1   2  22  4   3  5   13    1  18   2   W
279 279 104 SP  2   2  29  4   1  5   16    4  19   1   W
280 280 104 SP  3   3  21  4   2  6   10    7  12   4   W
281 281 104 SP  4   3  28  4   3  4   10    3  11   4   W
282 282 104 SP  5   4  18  5   4  4   16    0  15   2   W
283 283 104 SP  6   4  18  9   1  6   14    9  15   3   W
284 284 104 SP  7   4  19  7   3  5   26    9  27   2   W
285 285 104 SP  8   4  19  8   4  7    8    9  18   1   L
286 286 104 SM  1   6  29  5   2  7   10    3  15   1   W
287 287 104 SM  2   6  30  7   2  5   13    3  15   1   W
288 288 104 SM  3   6  30  8   2  7   17   22  20  11   L
289 289 104 SM  4   7  15  7   2  7   11    5  17   5   W
290 290 104 SM  5   7  20  6   2  7   12   11  13   8   W
291 291 104 SM  6   7  21  6   2  7    9   10  15   2   L
292 292 105 SP  1   3   6  4   2  5   13    7  14   3   W
293 293 105 SP  2   4   3  4   1  5   13    8  12   2   W
294 294 105 SP  3   4  17  6   1  5   10    6  14   5   W
295 295 105 SP  4   4  21  7   1  6   16    5  20   4   W
296 296 105 SP  5   4  24  3   4  5   13    2  15   3   W
297 297 105 SP  6   4  27  8   1  7   10   13  19   5   L
298 298 105 SM  1   6  22  6   1  7   12   15  19   9   L
299 299 105 SM  2   6  27  7   1  5   17    5  18   3   W
300 300 105 SM  3   7   6  7   2  7    8   14  14   5   L
301 301 105 SM  4   7  11  7   2  4   20    4  17   0   W
302 302 105 SM  5   7  13  7   3  7    4    7   8   3   L
303 303 105 SM  6   7  18  7   2  5   24    7  29   2   W
304 304 105 SM  7   7  20  7   3  7    8    9  12   1   L
305 305 106 SP  1   3   5  4   2  7    6    3  14   6   W
306 306 106 SP  2   3  26  4   4  5    4    9  10   2   L
307 307 106 SP  3   4   2  4   1  6    9    5  12   5   W
308 308 106 SP  4   4   9  4   2  7    7    9  12   4   L
309 309 106 SP  5   4  17  9   1  5   17    7  19   2   W
310 310 107 SP  1   3   4  5   4  5   11    1   9   3   W
311 311 107 SP  2   3  25  5   1  5   16    6  19   3   W
312 312 107 SP  3   4   3  5   3  6   12   10  18   3   W
313 313 107 SP  4   4  12  8   1  6    8    9  10   2   L
314 314 107 SM  1   6  25  7   2  6   10   13  17   5   L
315 315 107 SM  2   6  27  7   3  6    2   16   8   5   L
316 316 107 SM  3   7   2  8   2  7    7    4  11   3   W
317 317 107 SM  4   7  11  7   2  5   14    4  15   1   W
318 318 107 SM  5   7  16  7   3  6    0   11   3   6   L
319 319 107 SM  6   7  16  8   3  4   15    0  14   0   W
320 320 107 SM  7   7  18  7   2  4   20    4  21   3   W
321 321 107 SM  8   7  23  7   3  7   13    2  16   2   W
322 322 107 SM  9   7  23  8   2  7    6    3   8   3   W
323 323 107  F  1  10  19  7   3  4   23    0  18   0   W
324 324 107  F  2  10  20  1   3  4   21    4  22   4   W
325 325 107  F  3  10  20  2   2  7   11    5  16   5   W
326 326 107  F  4  10  20  4   2  5   13    2  18   1   W
327 327 108 SP  1   2  24  5   3  4   17    2  20   1   W
328 328 108 SP  2   3   2  5   4  5   27    1  31   1   W
329 329 108 SP  3   4   1  5   4  6   11    2  17   2   W
330 330 108 SP  4   4  13  4   2  4   18    2  18   1   W
331 331 108 SP  5   4  16  7   3  4   18    0  18   0   W
332 332 108 SP  6   4  17  7   2  5   15    9  22   1   W
333 333 108 SP  7   4  21  7   4  4   16    1  14   0   W
334 334 108 SP  8   4  23  7   3  5   18    8  18   3   W
335 335 108 SM  1   6  18  7   2  6   15    5  19   5   W
336 336 108 SM  2   6  23  7   2  7    3    2   6   3   W
337 337 108 SM  3   6  30  7   2  5   11    1  12   3   W
338 338 108 SM  4   7   2  7   2  7    7    7  15   5   T
339 339 108 SM  5   7  10  5   2  7    9    2  13   3   W
340 340 108 SM  6   7  14  7   2  7   13    5  16   4   W
341 341 108 SM  7   7  21  7   2  7   13   10  16   4   W
342 342 108 SM  8   7  30  6   2  7    5    3   9   1   W
343 343 108  F  1  10   3  6   2  4   17    2  16   3   W
344 344 108  F  2  10   3  7   2  5    1   15   4   8   L
345 345 108  F  3  10   4  1   2  6   19   18  22   7   W
346 346 108  F  4  10   4  2   2  7   16    7  21   3   W
347 347 108  F  5  10   4  3   2  7   12   15  22   4   L
348 348 109 SP  1   2  15  5   2  5   12    5  16   6   W
349 349 109 SP  2   2  22  5   3  4   19    4  19   0   W
350 350 109 SP  3   3  22  5   3  4   18    4  17   3   W
351 351 109 SP  4   4  19  8   3  5   17    9  16   3   W
352 352 109 SP  5   4  26  7   2  5   15    2  18   1   W
353 353 109 SP  6   4  27  8   3  5   20    9  23   2   W
354 354 109 SP  7   4  29  8   3  5   18    8  22   1   W
355 355 109 SM  1   6  22  7   2  7   16   10  18   1   W
356 356 109 SM  2   6  24  7   3  7   10    3  18   3   W
357 357 109 SM  3   6  29  7   3  6   17   18  14   5   L
358 358 109 SM  4   7   1  7   2  7   14   15  18   4   L
359 359 109 SM  5   7   8  7   3  5   10    0  14   2   W
360 360 109 SM  6   7  13  7   2  7    7    8  13   4   L
361 361 109 SM  7   7  20  7   2  6   17   12  20   2   W
362 362 109 SM  8   7  22  7   3  7   15    9  17   4   W
363 363 109 SM  9   7  29  8   3  7    7   14  10   3   L
364 364 109 SM 10   8   3  7   3  5   18    8  22   3   W
365 365 109  F  1  10   4  4   1  4   11    0  14   1   W
366 366 109  F  2  10  11  4   1  6   15    4  13   2   W
367 367 109  F  3  10  25  4   2  4   16    0  15   0   W
368 368 109  F  4  12   6  4   4  5   16    4  19   2   W
369 369 109  F  5  12   6  6   3  4   32    2  27   1   W
370 370 109  F  6  12   7  7   2  7   12   11  24   5   W
371 371 110 SP  1   2  21  5   4  4   17    1  21   4   W
372 372 110 SP  2   2  28  5   4  5   15    1  17   0   W
373 373 110 SP  3   3  21  5   4  4   12    3  12   1   W
374 374 110 SP  4   3  28  5   4  7   11    1  18   2   W
375 375 110 SP  5   4  11  5   3  4   16    1  16   1   W
376 376 110 SP  6   4  13  7   2  5   14    3  20   1   W
377 377 110 SP  7   4  15  7   1  5   22    7  23   4   W
378 378 110 SP  8   4  19  8   3  6   14    8  17   6   W
379 379 110 SP  9   4  22  8   4  7   11    6  15   2   W
380 380 110 SM  1   6  23  8   3  4   25    4  28   0   W
381 381 110 SM  2   6  28  7   4  4   28    6  29   1   W
382 382 110 SM  3   7   7  8   2  7   14   14  18   7   T
383 383 110 SM  4   7  14  7   4  4    5    4  10   2   W
384 384 110 SM  5   7  15  8   2  7   14    9  19   0   W
385 385 110 SM  6   7  19  7   4  7   15    8  13   1   W
386 386 110 SM  7   7  21  7   1  7   14    9  15   5   W
387 387 110 SM  8   7  22  8   2  7    7    9  11   3   L
388 388 110  F  1  10  10  5   1  6    8   11  10   7   L
389 389 110  F  2  10  12  7   2  7    3    5   7   3   L
390 390 110  F  3  10  14  6   3  5    9    6  14   3   W
391 391 110  F  4  10  18  8   1  6   10    7  12   5   W
392 392 110  F  5  10  24  6   2  5   14    4  17   1   W
393 393 110  F  6  10  26  9   2  5    2   15   2   1   L
394 394 111 SP  1   2  20  5   3  5    5    1   8   1   W
395 395 111 SP  2   2  27  5   2  5   10    2  18   1   W
396 396 111 SP  3   4   3  5   3  5   24    6  26   3   W
397 397 111 SP  4   4   3  6   4  5   14    4  18   5   W
398 398 111 SP  5   4  17  6   3  5   13   14  16   2   L
399 399 111 SM  1   6  27  7   4  7    9   13  15   7   L
400 400 111 SM  2   6  29  7   4  7    9    8  16   3   W
401 401 111 SM  3   7   6  7   3  7    9    6  15   2   W
402 402 111 SM  4   7  11  7   3  6   15   21  22   7   L
403 403 111 SM  5   7  13  7   3  7    6    9  17   3   L
404 404 111 SM  6   7  18  7   3  7    6   14  11   7   L
405 405 111 SM  7   7  25  8   3  7   10    9  16   3   W
406 406 111 SM  8   7  27  8   3  7    8   11  15   3   L
407 407 111 SM  9   8   1  8   3  6    3   13  10   3   L
408 408 111  F  1   9  25  5   2  5   15    9  12   3   W
409 409 111  F  2  10   2  5   2  6    9    5  10   2   W
410 410 111  F  3  10   9  5   2  6   10    9  14   3   W
411 411 111  F  4  10  24  8   2  6   16   15  19   6   W
412 412 111  F  5  10  26  8   1  6   14   13  17   4   W
413 413 111  F  6  11   1  7   2  7    8    7  16   3   W
414 414 111  F  7  11   6  9   2  5    2   12   6   3   L
415 415 112 SP  1   2  26  6   3  6   12   10   9   5   W
416 416 112 SP  2   3  25  6   2  6   14    8  16   1   W
417 417 112 SP  3   4   1  6   4  4   18    2  20   1   W
418 418 112 SP  4   4  15  8   2  5   13    8  11   1   W
419 419 112 SP  5   4  19  7   3  6   14   16  24   4   L
420 420 112 SM  1   6  25  7   4  4   25    3  24   3   W
421 421 112 SM  2   6  27  7   3  5    3   13   7   6   L
422 422 112 SM  3   7   2  7   4  6    8    9  13   4   L
423 423 112 SM  4   7  23  7   4  7    9   10  15   3   L
424 424 112 SM  5   7  24  7   4  6   12   20  17   6   L
425 425 112 SM  6   7  25  7   4  7    9   11  16   3   L
426 426 112 SM  7   7  30  8   4  5   22   11  23   4   W
427 427 112 SM  8   8   1  7   4  7    9   19  15   2   L
;
proc print data=softball;
run;


proc print data=softball2;
run;
proc freq data=softball;
run;
