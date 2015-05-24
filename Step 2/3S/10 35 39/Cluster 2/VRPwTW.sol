Total_Cost = 4005.61

X :=
Kazan_ASHANp            Kazan_Zelgros           1   1
Kazan_ASHANy            Kazan_ASHANp            1   1
Kazan_Zelgros           NaberezhnyeChelny_LENTA 1   1
MoscowDepot             NNovgorod_METROn        1   1
NNovgorod_ASHANb        NNovgorod_METROm        1   1
NNovgorod_ASHANm        NNovgorod_Magnit        1   1
NNovgorod_LENTA         NNovgorod_ASHANb        1   1
NNovgorod_METROm        NNovgorod_ASHANm        1   1
NNovgorod_METROn        Kazan_ASHANy            1   1
NNovgorod_Magnit        NNovgorod_Okey          1   1
NNovgorod_Okey          MoscowDepot             1   1
NaberezhnyeChelny_LENTA Ufa_Magnit              1   1
Ufa_ASHAN               Ufa_OKEYmj              1   1
Ufa_LENTA               NNovgorod_LENTA         1   1
Ufa_Magnit              Ufa_ASHAN               1   1
Ufa_OKEYe               Ufa_LENTA               1   1
Ufa_OKEYk               Ufa_OKEYe               1   1
Ufa_OKEYmj              Ufa_OKEYk               1   1
;

Served :=
Kazan_ASHANp            1   1
Kazan_ASHANy            1   1
Kazan_Zelgros           1   1
NNovgorod_ASHANb        3   1
NNovgorod_ASHANm        4   1
NNovgorod_LENTA         3   1
NNovgorod_METROm        3   1
NNovgorod_METROn        1   1
NNovgorod_Magnit        4   1
NNovgorod_Okey          4   1
NaberezhnyeChelny_LENTA 2   1
Ufa_ASHAN               2   1
Ufa_LENTA               2   1
Ufa_Magnit              2   1
Ufa_OKEYe               2   1
Ufa_OKEYk               2   1
Ufa_OKEYmj              2   1
;

ATime :=
Kazan_ASHANp            1   19.43
Kazan_ASHANy            1   18.94
Kazan_Zelgros           1   19.8
MoscowDepot             1   86.57
NNovgorod_ASHANb        1   56.6
NNovgorod_ASHANm        1   64.07
NNovgorod_LENTA         1   56.2
NNovgorod_METROm        1   57.05
NNovgorod_METROn        1   13.43
NNovgorod_Magnit        1   80.36
NNovgorod_Okey          1   80.71
NaberezhnyeChelny_LENTA 1   22.97
Ufa_ASHAN               1   40.24
Ufa_LENTA               1   43.17
Ufa_Magnit              1   39.8
Ufa_OKEYe               1   42.8
Ufa_OKEYk               1   42.54
Ufa_OKEYmj              1   42.19
;

DTime :=
Kazan_ASHANp            1   19.63
Kazan_ASHANy            1   19.14
Kazan_Zelgros           1   20
MoscowDepot             1    7.74
NNovgorod_ASHANb        1   56.8
NNovgorod_ASHANm        1   80.2
NNovgorod_LENTA         1   56.4
NNovgorod_METROm        1   64
NNovgorod_METROn        1   13.63
NNovgorod_Magnit        1   80.56
NNovgorod_Okey          1   80.91
NaberezhnyeChelny_LENTA 1   36.02
Ufa_ASHAN               1   41.84
Ufa_LENTA               1   44
Ufa_Magnit              1   40
Ufa_OKEYe               1   43
Ufa_OKEYk               1   42.74
Ufa_OKEYmj              1   42.39
;

RouteDuration [*] :=
1  37.87
;

WTime :=
Kazan_ASHANp            1    0
Kazan_ASHANy            1    0
Kazan_Zelgros           1    0
MoscowDepot             1    0
NNovgorod_ASHANb        1    0
NNovgorod_ASHANm        1   15.93
NNovgorod_LENTA         1    0
NNovgorod_METROm        1    6.75
NNovgorod_METROn        1    0
NNovgorod_Magnit        1    0
NNovgorod_Okey          1    0
NaberezhnyeChelny_LENTA 1   12.85
Ufa_ASHAN               1    1.4
Ufa_LENTA               1    0.63
Ufa_Magnit              1    0
Ufa_OKEYe               1    0
Ufa_OKEYk               1    0
Ufa_OKEYmj              1    0
;

Times (seconds):
Input =  0
Solve =  3243.14
Output = 1.04688
CPLEX solution status 13 with fixed integers:
	aborted in phase II
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: aborted, integer solution exists; objective 4005.61
17571947 MIP simplex iterations
2220134 branch-and-bound nodes
absmipgap = 2477.29, relmipgap = 0.618456

Tool completed successfully
