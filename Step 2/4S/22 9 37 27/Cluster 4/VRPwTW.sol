Total_Cost = 1754.5

X :=
Kazan_ASHANp     Kazan_Zelgros    1   1
Kazan_ASHANy     MoscowDepot      1   1
Kazan_Zelgros    Kazan_ASHANy     1   1
MoscowDepot      NNovgorod_METROm 1   1
NNovgorod_ASHANb NNovgorod_ASHANm 1   1
NNovgorod_ASHANm NNovgorod_METROn 1   1
NNovgorod_LENTA  NNovgorod_ASHANb 1   1
NNovgorod_METROm NNovgorod_LENTA  1   1
NNovgorod_METROn NNovgorod_Magnit 1   1
NNovgorod_Magnit NNovgorod_Okey   1   1
NNovgorod_Okey   Kazan_ASHANp     1   1
;

Served :=
Kazan_ASHANp     10   1
Kazan_ASHANy     10   1
Kazan_Zelgros    10   1
NNovgorod_ASHANb 10   1
NNovgorod_ASHANm 10   1
NNovgorod_LENTA  10   1
NNovgorod_METROm 10   1
NNovgorod_METROn 10   1
NNovgorod_Magnit 10   1
NNovgorod_Okey   10   1
;

ATime :=
Kazan_ASHANp     1   231.68
Kazan_ASHANy     1   232.52
Kazan_Zelgros    1   232.05
MoscowDepot      1   243.55
NNovgorod_ASHANb 1   224.4
NNovgorod_ASHANm 1   224.88
NNovgorod_LENTA  1   224
NNovgorod_METROm 1   223.74
NNovgorod_METROn 1   225.27
NNovgorod_Magnit 1   225.67
NNovgorod_Okey   1   226.02
;

DTime :=
Kazan_ASHANp     1   231.88
Kazan_ASHANy     1   232.72
Kazan_Zelgros    1   232.25
MoscowDepot      1   218.17
NNovgorod_ASHANb 1   224.6
NNovgorod_ASHANm 1   225.08
NNovgorod_LENTA  1   224.2
NNovgorod_METROm 1   223.94
NNovgorod_METROn 1   225.47
NNovgorod_Magnit 1   225.87
NNovgorod_Okey   1   226.22
;

RouteDuration [*] :=
1  23.38
;

WTime :=
Kazan_ASHANp     1   0
Kazan_ASHANy     1   0
Kazan_Zelgros    1   0
MoscowDepot      1   0
NNovgorod_ASHANb 1   0
NNovgorod_ASHANm 1   0
NNovgorod_LENTA  1   0
NNovgorod_METROm 1   0
NNovgorod_METROn 1   0
NNovgorod_Magnit 1   0
NNovgorod_Okey   1   0
;



CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  8.85938
Output = 0.015625
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution within mipgap or absmipgap; objective 1754.5
56972 MIP simplex iterations
6279 branch-and-bound nodes
absmipgap = 0.0785835, relmipgap = 4.47897e-05

Tool completed successfully
