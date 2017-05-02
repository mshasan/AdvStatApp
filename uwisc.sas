data UWisc;
	input Sex $ LS $ GPA;
cards;
M	DO	2.56
M	DO	2.70
M	DO	3.04
M	DO	1.42
M	FS	3.02
M	FS	2.67
M	FS	2.35
M	FS	1.80
M	CO	3.41
M	CO	2.97
M	CO	2.23
M	CO	2.31
M	AP	2.28
M	AP	3.73
M	AP	2.05
M	AP	2.61
M	HO	2.57
M	HO	2.81
M	HO	3.01
M	HO	3.40
F	DO	3.33
F	DO	1.80
F	DO	2.50
F	DO	3.04
F	FS	3.87
F	FS	3.00
F	FS	3.25
F	FS	2.76
F	CO	3.14
F	CO	4.00
F	CO	2.66
F	CO	2.91
F	AP	3.69
F	AP	2.55
F	AP	3.21
F	AP	2.86
F	HO	3.09
F	HO	1.99
F	HO	3.46
F	HO	3.61
;
proc print data=UWisc;
run;
*a;
proc anova data=UWisc ;
  class Sex LS;
  model GPA = Sex LS Sex*LS;
  means Sex*LS;
run;
