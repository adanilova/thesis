Total_Cost = 5533.85

X :=
Kazan_ASHANp            Kazan_Zelgros           1   1
Kazan_ASHANy            Kazan_ASHANp            1   1
Kazan_Zelgros           NNovgorod_Okey          1   1
MoscowDepot             Yekaterinburg_ASHANh    1   1
NNovgorod_Okey          MoscowDepot             1   1
NaberezhnyeChelny_LENTA Kazan_ASHANy            1   1
Perm_LENTA              Ufa_OKEYmj              1   1
Pyshma_Perekrestok      Perm_LENTA              1   1
Ufa_ASHAN               Ufa_LENTA               1   1
Ufa_LENTA               Ufa_OKEYk               1   1
Ufa_Magnit              NaberezhnyeChelny_LENTA 1   1
Ufa_OKEYe               Ufa_ASHAN               1   1
Ufa_OKEYk               Ufa_Magnit              1   1
Ufa_OKEYmj              Ufa_OKEYe               1   1
Yekaterinburg_ASHANh    Yekaterinburg_ASHANm    1   1
Yekaterinburg_ASHANm    Pyshma_Perekrestok      1   1
;

Served :=
Kazan_ASHANp            10   1
Kazan_ASHANy            10   1
Kazan_Zelgros           10   1
NNovgorod_Okey          11   1
NaberezhnyeChelny_LENTA 10   1
Perm_LENTA              9    1
Pyshma_Perekrestok      8    1
Ufa_ASHAN               9    1
Ufa_LENTA               9    1
Ufa_Magnit              10   1
Ufa_OKEYe               9    1
Ufa_OKEYk               10   1
Ufa_OKEYmj              9    1
Yekaterinburg_ASHANh    8    1
Yekaterinburg_ASHANm    8    1
;

ATime :=
Kazan_ASHANp            1   234.44
Kazan_ASHANy            1   233.95
Kazan_Zelgros           1   234.81
MoscowDepot             1   253.86
NNovgorod_Okey          1   240.52
NaberezhnyeChelny_LENTA 1   230.57
Perm_LENTA              1   191.34
Pyshma_Perekrestok      1   183.8
Ufa_ASHAN               1   210.8
Ufa_LENTA               1   211.21
Ufa_Magnit              1   226.53
Ufa_OKEYe               1   210.41
Ufa_OKEYk               1   211.62
Ufa_OKEYmj              1   210.09
Yekaterinburg_ASHANh    1   180.5
Yekaterinburg_ASHANm    1   180.93
;

DTime :=
Kazan_ASHANp            1   234.64
Kazan_ASHANy            1   234.15
Kazan_Zelgros           1   235.01
MoscowDepot             1   157.23
NNovgorod_Okey          1   248.2
NaberezhnyeChelny_LENTA 1   230.77
Perm_LENTA              1   203.53
Pyshma_Perekrestok      1   184
Ufa_ASHAN               1   211
Ufa_LENTA               1   211.41
Ufa_Magnit              1   226.73
Ufa_OKEYe               1   210.61
Ufa_OKEYk               1   226.2
Ufa_OKEYmj              1   210.29
Yekaterinburg_ASHANh    1   180.7
Yekaterinburg_ASHANm    1   181.13
;

RouteDuration [*] :=
1  59.78
;

WTime :=
Kazan_ASHANp            1    0
Kazan_ASHANy            1    0
Kazan_Zelgros           1    0
MoscowDepot             1    0
NNovgorod_Okey          1    7.48
NaberezhnyeChelny_LENTA 1    0
Perm_LENTA              1   11.99
Pyshma_Perekrestok      1    0
Ufa_ASHAN               1    0
Ufa_LENTA               1    0
Ufa_Magnit              1    0
Ufa_OKEYe               1    0
Ufa_OKEYk               1   14.38
Ufa_OKEYmj              1    0
Yekaterinburg_ASHANh    1    0
Yekaterinburg_ASHANm    1    0
;

CPLEX 12.6.0.0: timing 1

Interrupted!

<BREAK> (cplex)

Times (seconds):
Input =  0
Solve =  2256.08
Output = 0.78125
CPLEX solution status 13 with fixed integers:
	aborted in phase II
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: aborted, integer solution exists; objective 5533.85
14202085 MIP simplex iterations
1763170 branch-and-bound nodes
absmipgap = 2152.57, relmipgap = 0.388982

Tool completed successfully