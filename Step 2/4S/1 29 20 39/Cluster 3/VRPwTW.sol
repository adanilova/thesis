Total_Cost = 873.25

X :=
MoscowDepot      NNovgorod_Okey   1   1
NNovgorod_ASHANm MoscowDepot      1   1
NNovgorod_LENTA  NNovgorod_ASHANm 1   1
NNovgorod_Magnit NNovgorod_LENTA  1   1
NNovgorod_Okey   NNovgorod_Magnit 1   1
;

Served :=
NNovgorod_ASHANm 2   1
NNovgorod_LENTA  2   1
NNovgorod_Magnit 2   1
NNovgorod_Okey   2   1
;

ATime :=
MoscowDepot      1   38.86
NNovgorod_ASHANm 1   33.06
NNovgorod_LENTA  1   32.78
NNovgorod_Magnit 1   32.39
NNovgorod_Okey   1   32
;

DTime :=
MoscowDepot      1   26.43
NNovgorod_ASHANm 1   33.26
NNovgorod_LENTA  1   32.98
NNovgorod_Magnit 1   32.59
NNovgorod_Okey   1   32.2
;

RouteDuration [*] :=
1  11.63
;

WTime :=
MoscowDepot      1   0
NNovgorod_ASHANm 1   0
NNovgorod_LENTA  1   0
NNovgorod_Magnit 1   0
NNovgorod_Okey   1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  0.015625
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 873.25
47 MIP simplex iterations
0 branch-and-bound nodes

Tool completed successfully