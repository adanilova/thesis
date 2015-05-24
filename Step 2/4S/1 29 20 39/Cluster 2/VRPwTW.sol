Total_Cost = 2344.73

X :=
Kazan_ASHANp            Kazan_Zelgros           1   1
Kazan_ASHANy            NNovgorod_METROn        1   1
Kazan_Zelgros           Kazan_ASHANy            1   1
MoscowDepot             NaberezhnyeChelny_LENTA 1   1
NNovgorod_ASHANb        MoscowDepot             1   1
NNovgorod_METROm        NNovgorod_ASHANb        1   1
NNovgorod_METROn        NNovgorod_METROm        1   1
NaberezhnyeChelny_LENTA Kazan_ASHANp            1   1
;

Served :=
Kazan_ASHANp            2   1
Kazan_ASHANy            2   1
Kazan_Zelgros           2   1
NNovgorod_ASHANb        3   1
NNovgorod_METROm        3   1
NNovgorod_METROn        3   1
NaberezhnyeChelny_LENTA 2   1
;

ATime :=
Kazan_ASHANp            1   42.96
Kazan_ASHANy            1   43.8
Kazan_Zelgros           1   43.33
MoscowDepot             1   62.08
NNovgorod_ASHANb        1   56
NNovgorod_METROm        1   55.59
NNovgorod_METROn        1   49.31
NaberezhnyeChelny_LENTA 1   39.71
;

DTime :=
Kazan_ASHANp            1   43.16
Kazan_ASHANy            1   44
Kazan_Zelgros           1   43.53
MoscowDepot             1   26.01
NNovgorod_ASHANb        1   56.2
NNovgorod_METROm        1   55.79
NNovgorod_METROn        1   55.34
NaberezhnyeChelny_LENTA 1   39.91
;

RouteDuration [*] :=
1  28.84
;

WTime :=
Kazan_ASHANp            1   0
Kazan_ASHANy            1   0
Kazan_Zelgros           1   0
MoscowDepot             1   0
NNovgorod_ASHANb        1   0
NNovgorod_METROm        1   0
NNovgorod_METROn        1   5.83
NaberezhnyeChelny_LENTA 1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  14.9062
Output = 0.015625
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 2344.729992
161203 MIP simplex iterations
28171 branch-and-bound nodes

Tool completed successfully