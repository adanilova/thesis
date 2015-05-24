Total_Cost = 2961.25

X :=
Ivanovo_7Continent Ivanovo_ASHAN      1   1
Ivanovo_ASHAN      Ivanovo_Magnit     1   1
Ivanovo_Magnit     MoscowDepot        1   1
Ivanovo_Okey       Ivanovo_7Continent 1   1
Kostroma_ASHAN     Ivanovo_Okey       1   1
MoscowDepot        Perm_LENTA         1   1
Perm_LENTA         Kostroma_ASHAN     1   1
;

Served :=
Ivanovo_7Continent 5   1
Ivanovo_ASHAN      5   1
Ivanovo_Magnit     5   1
Ivanovo_Okey       5   1
Kostroma_ASHAN     5   1
Perm_LENTA         4   1
;

ATime :=
Ivanovo_7Continent 1   105.15
Ivanovo_ASHAN      1   105.43
Ivanovo_Magnit     1   105.8
Ivanovo_Okey       1   104.77
Kostroma_ASHAN     1   103
MoscowDepot        1   110.3
Perm_LENTA         1    88.33
;

DTime :=
Ivanovo_7Continent 1   105.35
Ivanovo_ASHAN      1   105.63
Ivanovo_Magnit     1   106
Ivanovo_Okey       1   104.97
Kostroma_ASHAN     1   103.2
MoscowDepot        1    69.63
Perm_LENTA         1    88.53
;

RouteDuration [*] :=
1  39.47
;

WTime :=
Ivanovo_7Continent 1   0
Ivanovo_ASHAN      1   0
Ivanovo_Magnit     1   0
Ivanovo_Okey       1   0
Kostroma_ASHAN     1   0
MoscowDepot        1   0
Perm_LENTA         1   0
;


CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  1.3125
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 2961.25
15121 MIP simplex iterations
3744 branch-and-bound nodes

Tool completed successfully