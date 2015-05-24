Total_Cost = 1102

X :=
Ivanovo_7Continent NNovgorod_METROm   1   1
Ivanovo_ASHAN      Ivanovo_7Continent 1   1
Ivanovo_Magnit     Ivanovo_Okey       1   1
Ivanovo_Okey       Ivanovo_ASHAN      1   1
MoscowDepot        Ivanovo_Magnit     1   1
NNovgorod_ASHANb   NNovgorod_ASHANm   1   1
NNovgorod_ASHANm   NNovgorod_METROn   1   1
NNovgorod_LENTA    NNovgorod_ASHANb   1   1
NNovgorod_METROm   NNovgorod_LENTA    1   1
NNovgorod_METROn   NNovgorod_Magnit   1   1
NNovgorod_Magnit   MoscowDepot        1   1
;

Served :=
Ivanovo_7Continent 3   1
Ivanovo_ASHAN      3   1
Ivanovo_Magnit     3   1
Ivanovo_Okey       3   1
NNovgorod_ASHANb   3   1
NNovgorod_ASHANm   3   1
NNovgorod_LENTA    3   1
NNovgorod_METROm   3   1
NNovgorod_METROn   3   1
NNovgorod_Magnit   3   1
;

ATime :=
Ivanovo_7Continent 1   55.93
Ivanovo_ASHAN      1   55.65
Ivanovo_Magnit     1   55
Ivanovo_Okey       1   55.29
MoscowDepot        1   67.42
NNovgorod_ASHANb   1   60.34
NNovgorod_ASHANm   1   60.82
NNovgorod_LENTA    1   59.94
NNovgorod_METROm   1   59.68
NNovgorod_METROn   1   61.21
NNovgorod_Magnit   1   61.61
;

DTime :=
Ivanovo_7Continent 1   56.13
Ivanovo_ASHAN      1   55.85
Ivanovo_Magnit     1   55.2
Ivanovo_Okey       1   55.49
MoscowDepot        1   50.74
NNovgorod_ASHANb   1   60.54
NNovgorod_ASHANm   1   61.02
NNovgorod_LENTA    1   60.14
NNovgorod_METROm   1   59.88
NNovgorod_METROn   1   61.41
NNovgorod_Magnit   1   61.81
;

RouteDuration [*] :=
1  14.68
;

WTime :=
Ivanovo_7Continent 1   0
Ivanovo_ASHAN      1   0
Ivanovo_Magnit     1   0
Ivanovo_Okey       1   0
MoscowDepot        1   0
NNovgorod_ASHANb   1   0
NNovgorod_ASHANm   1   0
NNovgorod_LENTA    1   0
NNovgorod_METROm   1   0
NNovgorod_METROn   1   0
NNovgorod_Magnit   1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  20.8438
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 1102
168695 MIP simplex iterations
29336 branch-and-bound nodes

Tool completed successfully