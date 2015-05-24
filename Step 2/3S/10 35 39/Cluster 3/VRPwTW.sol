Total_Cost = 4483.02

X :=
Ivanovo_7Continent   Ivanovo_ASHAN        1   1
Ivanovo_ASHAN        Ivanovo_Magnit       1   1
Ivanovo_Magnit       MoscowDepot          1   1
Ivanovo_Okey         Ivanovo_7Continent   1   1
Kostroma_ASHAN       Ivanovo_Okey         1   1
MoscowDepot          Yekaterinburg_ASHANm 1   1
Perm_LENTA           Kostroma_ASHAN       1   1
Pyshma_Perekrestok   Yekaterinburg_ASHANh 1   1
Yekaterinburg_ASHANh Perm_LENTA           1   1
Yekaterinburg_ASHANm Pyshma_Perekrestok   1   1
;

Served :=
Ivanovo_7Continent   12   1
Ivanovo_ASHAN        12   1
Ivanovo_Magnit       12   1
Ivanovo_Okey         12   1
Kostroma_ASHAN       12   1
Perm_LENTA           11   1
Pyshma_Perekrestok   11   1
Yekaterinburg_ASHANh 11   1
Yekaterinburg_ASHANm 10   1
;

ATime :=
Ivanovo_7Continent   1   273.15
Ivanovo_ASHAN        1   273.43
Ivanovo_Magnit       1   273.8
Ivanovo_Okey         1   272.77
Kostroma_ASHAN       1   271
MoscowDepot          1   278.3
Perm_LENTA           1   256.33
Pyshma_Perekrestok   1   234.67
Yekaterinburg_ASHANh 1   251.29
Yekaterinburg_ASHANm 1   231.8
;

DTime :=
Ivanovo_7Continent   1   273.35
Ivanovo_ASHAN        1   273.63
Ivanovo_Magnit       1   274
Ivanovo_Okey         1   272.97
Kostroma_ASHAN       1   271.2
MoscowDepot          1   208.72
Perm_LENTA           1   256.53
Pyshma_Perekrestok   1   248.54
Yekaterinburg_ASHANh 1   251.49
Yekaterinburg_ASHANm 1   232
;

RouteDuration [*] :=
1  54.11
;

WTime :=
Ivanovo_7Continent   1    0
Ivanovo_ASHAN        1    0
Ivanovo_Magnit       1    0
Ivanovo_Okey         1    0
Kostroma_ASHAN       1    0
MoscowDepot          1    0
Perm_LENTA           1    0
Pyshma_Perekrestok   1   13.67
Yekaterinburg_ASHANh 1    0
Yekaterinburg_ASHANm 1    0
;


CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  239.281
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution within mipgap or absmipgap; objective 4483.02
2477332 MIP simplex iterations
330260 branch-and-bound nodes
absmipgap = 0.4, relmipgap = 8.92256e-05

Tool completed successfully
