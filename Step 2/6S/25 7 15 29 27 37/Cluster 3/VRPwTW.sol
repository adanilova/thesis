Total_Cost = 4180.24

X :=
MoscowDepot             NaberezhnyeChelny_LENTA 1   1
NaberezhnyeChelny_LENTA Ufa_Magnit              1   1
Pyshma_Perekrestok      Yekaterinburg_ASHANh    1   1
Ufa_ASHAN               Ufa_LENTA               1   1
Ufa_LENTA               Ufa_OKEYk               1   1
Ufa_Magnit              Ufa_ASHAN               1   1
Ufa_OKEYe               Ufa_OKEYmj              1   1
Ufa_OKEYk               Ufa_OKEYe               1   1
Ufa_OKEYmj              Pyshma_Perekrestok      1   1
Yekaterinburg_ASHANh    Yekaterinburg_ASHANm    1   1
Yekaterinburg_ASHANm    MoscowDepot             1   1
;

Served :=
NaberezhnyeChelny_LENTA 11   1
Pyshma_Perekrestok      12   1
Ufa_ASHAN               11   1
Ufa_LENTA               11   1
Ufa_Magnit              11   1
Ufa_OKEYe               11   1
Ufa_OKEYk               11   1
Ufa_OKEYmj              11   1
Yekaterinburg_ASHANh    12   1
Yekaterinburg_ASHANm    12   1
;

ATime :=
MoscowDepot             1   297.92
NaberezhnyeChelny_LENTA 1   251.82
Pyshma_Perekrestok      1   267.81
Ufa_ASHAN               1   256.24
Ufa_LENTA               1   257
Ufa_Magnit              1   255.8
Ufa_OKEYe               1   257.67
Ufa_OKEYk               1   257.41
Ufa_OKEYmj              1   258
Yekaterinburg_ASHANh    1   273.95
Yekaterinburg_ASHANm    1   274.38
;

DTime :=
MoscowDepot             1   238.12
NaberezhnyeChelny_LENTA 1   252.02
Pyshma_Perekrestok      1   271.2
Ufa_ASHAN               1   256.79
Ufa_LENTA               1   257.2
Ufa_Magnit              1   256
Ufa_OKEYe               1   257.87
Ufa_OKEYk               1   257.61
Ufa_OKEYmj              1   258.2
Yekaterinburg_ASHANh    1   274.15
Yekaterinburg_ASHANm    1   274.58
;

RouteDuration [*] :=
1  54.26
;

WTime :=
MoscowDepot             1   0
NaberezhnyeChelny_LENTA 1   0
Pyshma_Perekrestok      1   3.19
Ufa_ASHAN               1   0.35
Ufa_LENTA               1   0
Ufa_Magnit              1   0
Ufa_OKEYe               1   0
Ufa_OKEYk               1   0
Ufa_OKEYmj              1   0
Yekaterinburg_ASHANh    1   0
Yekaterinburg_ASHANm    1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  521.281
Output = 0.015625
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution within mipgap or absmipgap; objective 4180.24
5016536 MIP simplex iterations
667352 branch-and-bound nodes
absmipgap = 0.4, relmipgap = 9.56883e-05

Tool completed successfully
