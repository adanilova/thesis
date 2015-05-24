Total_Cost = 907.75

X :=
MoscowDepot      NNovgorod_Magnit 1   1
NNovgorod_ASHANb NNovgorod_METROm 1   1
NNovgorod_ASHANm MoscowDepot      1   1
NNovgorod_LENTA  NNovgorod_ASHANb 1   1
NNovgorod_METROm NNovgorod_ASHANm 1   1
NNovgorod_METROn NNovgorod_LENTA  1   1
NNovgorod_Magnit NNovgorod_METROn 1   1
;

Served :=
NNovgorod_ASHANb 3   1
NNovgorod_ASHANm 3   1
NNovgorod_LENTA  3   1
NNovgorod_METROm 3   1
NNovgorod_METROn 3   1
NNovgorod_Magnit 3   1
;

ATime :=
MoscowDepot      1   62.92
NNovgorod_ASHANb 1   56.4
NNovgorod_ASHANm 1   57.12
NNovgorod_LENTA  1   56
NNovgorod_METROm 1   56.85
NNovgorod_METROn 1   55.55
NNovgorod_Magnit 1   55.16
;

DTime :=
MoscowDepot      1   49.63
NNovgorod_ASHANb 1   56.6
NNovgorod_ASHANm 1   57.32
NNovgorod_LENTA  1   56.2
NNovgorod_METROm 1   57.05
NNovgorod_METROn 1   55.75
NNovgorod_Magnit 1   55.36
;

RouteDuration [*] :=
1  12.09
;

WTime :=
MoscowDepot      1   0
NNovgorod_ASHANb 1   0
NNovgorod_ASHANm 1   0
NNovgorod_LENTA  1   0
NNovgorod_METROm 1   0
NNovgorod_METROn 1   0
NNovgorod_Magnit 1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  0.234375
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 907.75
2564 MIP simplex iterations
279 branch-and-bound nodes

Tool completed successfully
