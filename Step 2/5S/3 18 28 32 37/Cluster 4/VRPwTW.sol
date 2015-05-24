Total_Cost = 2767.34

X :=
MoscowDepot             NaberezhnyeChelny_LENTA 1   1
NNovgorod_Okey          MoscowDepot             1   1
NaberezhnyeChelny_LENTA Ufa_Magnit              1   1
Ufa_ASHAN               Ufa_LENTA               1   1
Ufa_LENTA               Ufa_OKEYmj              1   1
Ufa_Magnit              Ufa_ASHAN               1   1
Ufa_OKEYe               Ufa_OKEYk               1   1
Ufa_OKEYk               NNovgorod_Okey          1   1
Ufa_OKEYmj              Ufa_OKEYe               1   1
;

Served :=
NNovgorod_Okey          4   1
NaberezhnyeChelny_LENTA 3   1
Ufa_ASHAN               3   1
Ufa_LENTA               3   1
Ufa_Magnit              3   1
Ufa_OKEYe               3   1
Ufa_OKEYk               3   1
Ufa_OKEYmj              3   1
;

ATime :=
MoscowDepot             1   85.86
NNovgorod_Okey          1   78.21
NaberezhnyeChelny_LENTA 1   59.82
Ufa_ASHAN               1   64.24
Ufa_LENTA               1   65
Ufa_Magnit              1   63.8
Ufa_OKEYe               1   65.8
Ufa_OKEYk               1   66.07
Ufa_OKEYmj              1   65.48
;

DTime :=
MoscowDepot             1   46.12
NNovgorod_Okey          1   80.2
NaberezhnyeChelny_LENTA 1   60.02
Ufa_ASHAN               1   64.79
Ufa_LENTA               1   65.2
Ufa_Magnit              1   64
Ufa_OKEYe               1   66
Ufa_OKEYk               1   66.27
Ufa_OKEYmj              1   65.68
;

RouteDuration [*] :=
1  36
;

WTime :=
MoscowDepot             1   0
NNovgorod_Okey          1   1.79
NaberezhnyeChelny_LENTA 1   0
Ufa_ASHAN               1   0.35
Ufa_LENTA               1   0
Ufa_Magnit              1   0
Ufa_OKEYe               1   0
Ufa_OKEYk               1   0
Ufa_OKEYmj              1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  73.4375
Output = 0.015625
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution within mipgap or absmipgap; objective 2767.34
654714 MIP simplex iterations
121950 branch-and-bound nodes
absmipgap = 0.21, relmipgap = 7.58851e-05

Tool completed successfully
