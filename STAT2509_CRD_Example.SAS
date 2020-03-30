*======================================================================
This is the SAS code for CRD Teaching Techniques class example.
======================================================================;
footnote 'Name, Student ID'; 
data Teach; 
input Method Result @@;
cards;
 1 65 1 87 1 73 1 79 1 81 1 69
 2 75 2 69 2 83 2 81 2 72 2 79 2 90
 3 59 3 78 3 67 3 62 3 83 3 76
 4 94 4 89 4 80 4 88
run;

proc Anova;
ods graphics off; 
 class Method; 
 model Result=Method;
 means Method/tukey lsd bon alpha=0.10; 
run;

proc NPAR1WAY WILCOXON; 
 class Method;
run;
