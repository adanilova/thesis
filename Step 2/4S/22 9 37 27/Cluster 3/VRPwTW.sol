Total_Cost = 4654.38

X :=
Ivanovo_7Continent      NaberezhnyeChelny_LENTA 1   1
Ivanovo_ASHAN           Ivanovo_7Continent      1   1
Ivanovo_Magnit          Ivanovo_Okey            1   1
Ivanovo_Okey            Ivanovo_ASHAN           1   1
MoscowDepot             Ivanovo_Magnit          1   1
NaberezhnyeChelny_LENTA Ufa_Magnit              1   1
Perm_LENTA              MoscowDepot             1   1
Pyshma_Perekrestok      Yekaterinburg_ASHANh    1   1
Ufa_ASHAN               Ufa_OKEYmj              1   1
Ufa_LENTA               Pyshma_Perekrestok      1   1
Ufa_Magnit              Ufa_ASHAN               1   1
Ufa_OKEYe               Ufa_LENTA               1   1
Ufa_OKEYk               Ufa_OKEYe               1   1
Ufa_OKEYmj              Ufa_OKEYk               1   1
Yekaterinburg_ASHANh    Yekaterinburg_ASHANm    1   1
Yekaterinburg_ASHANm    Perm_LENTA              1   1
;

Served :=
Ivanovo_7Continent      1   1
Ivanovo_ASHAN           1   1
Ivanovo_Magnit          1   1
Ivanovo_Okey            1   1
NaberezhnyeChelny_LENTA 2   1
Perm_LENTA              3   1
Pyshma_Perekrestok      3   1
Ufa_ASHAN               2   1
Ufa_LENTA               2   1
Ufa_Magnit              2   1
Ufa_OKEYe               2   1
Ufa_OKEYk               2   1
Ufa_OKEYmj              2   1
Yekaterinburg_ASHANh    3   1
Yekaterinburg_ASHANm    3   1
;

ATime :=
Ivanovo_7Continent      1   15.8
Ivanovo_ASHAN           1   15.52
Ivanovo_Magnit          1   14.87
Ivanovo_Okey            1   15.16
MoscowDepot             1   82.39
NaberezhnyeChelny_LENTA 1   27.8
Perm_LENTA              1   63.3
Pyshma_Perekrestok      1   52.94
Ufa_ASHAN               1   35.42
Ufa_LENTA               1   43.17
Ufa_Magnit              1   34.98
Ufa_OKEYe               1   36.58
Ufa_OKEYk               1   36.32
Ufa_OKEYmj              1   35.97
Yekaterinburg_ASHANh    1   57.95
Yekaterinburg_ASHANm    1   58.38
;

DTime :=
Ivanovo_7Continent      1   16
Ivanovo_ASHAN           1   15.72
Ivanovo_Magnit          1   15.07
Ivanovo_Okey            1   15.36
MoscowDepot             1   10.61
NaberezhnyeChelny_LENTA 1   31.2
Perm_LENTA              1   63.5
Pyshma_Perekrestok      1   55.2
Ufa_ASHAN               1   35.62
Ufa_LENTA               1   43.37
Ufa_Magnit              1   35.18
Ufa_OKEYe               1   43
Ufa_OKEYk               1   36.52
Ufa_OKEYmj              1   36.17
Yekaterinburg_ASHANh    1   58.15
Yekaterinburg_ASHANm    1   58.58
;

RouteDuration [*] :=
1  57.3
;

WTime :=
Ivanovo_7Continent      1   0
Ivanovo_ASHAN           1   0
Ivanovo_Magnit          1   0
Ivanovo_Okey            1   0
MoscowDepot             1   0
NaberezhnyeChelny_LENTA 1   3.2
Perm_LENTA              1   0
Pyshma_Perekrestok      1   2.06
Ufa_ASHAN               1   0
Ufa_LENTA               1   0
Ufa_Magnit              1   0
Ufa_OKEYe               1   6.22
Ufa_OKEYk               1   0
Ufa_OKEYmj              1   0
Yekaterinburg_ASHANh    1   0
Yekaterinburg_ASHANm    1   0
;



Times (seconds):
Input =  0
Solve =  1664.7
Output = 1.14062
CPLEX solution status 13 with fixed integers:
	aborted in phase II
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: aborted, integer solution exists; objective 4654.38
16933952 MIP simplex iterations
2298240 branch-and-bound nodes
absmipgap = 1787.27, relmipgap = 0.383998

Tool completed successfully
