Total_Cost = 1506.38

X :=
Kostroma_7Continent   Yaroslavl_Magnit      1   1
MoscowDepot           Kostroma_7Continent   1   1
Tver_ATAKmk           Tver_Magnit           1   1
Tver_ATAKo            Tver_LENTA            1   1
Tver_LENTA            MoscowDepot           1   1
Tver_Magnit           Tver_ATAKo            1   1
Yaroslavl_7Continent  Yaroslavl_ASHANp      1   1
Yaroslavl_ASHANn      Yaroslavl_7Continent  1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA       1   1
Yaroslavl_ATAK        Yaroslavl_ASHANn      1   1
Yaroslavl_Giperglobus Yaroslavl_LENTA1      1   1
Yaroslavl_LENTA       Yaroslavl_Giperglobus 1   1
Yaroslavl_LENTA1      Tver_ATAKmk           1   1
Yaroslavl_Magnit      Yaroslavl_ATAK        1   1
;

Served :=
Kostroma_7Continent   10   1
Tver_ATAKmk           10   1
Tver_ATAKo            11   1
Tver_LENTA            11   1
Tver_Magnit           11   1
Yaroslavl_7Continent  10   1
Yaroslavl_ASHANn      10   1
Yaroslavl_ASHANp      10   1
Yaroslavl_ATAK        10   1
Yaroslavl_Giperglobus 10   1
Yaroslavl_LENTA       10   1
Yaroslavl_LENTA1      10   1
Yaroslavl_Magnit      10   1
;

ATime :=
Kostroma_7Continent   1   223.75
MoscowDepot           1   251.43
Tver_ATAKmk           1   231.8
Tver_ATAKo            1   248.53
Tver_LENTA            1   248.83
Tver_Magnit           1   232.27
Yaroslavl_7Continent  1   225.78
Yaroslavl_ASHANn      1   225.54
Yaroslavl_ASHANp      1   226.22
Yaroslavl_ATAK        1   225.13
Yaroslavl_Giperglobus 1   226.94
Yaroslavl_LENTA       1   226.58
Yaroslavl_LENTA1      1   227.46
Yaroslavl_Magnit      1   224.85
;

DTime :=
Kostroma_7Continent   1   223.95
MoscowDepot           1   219.53
Tver_ATAKmk           1   232
Tver_ATAKo            1   248.73
Tver_LENTA            1   249.03
Tver_Magnit           1   248.2
Yaroslavl_7Continent  1   225.98
Yaroslavl_ASHANn      1   225.74
Yaroslavl_ASHANp      1   226.42
Yaroslavl_ATAK        1   225.33
Yaroslavl_Giperglobus 1   227.14
Yaroslavl_LENTA       1   226.78
Yaroslavl_LENTA1      1   227.66
Yaroslavl_Magnit      1   225.05
;

RouteDuration [*] :=
1  13.57
;

WTime :=
Kostroma_7Continent   1    0
MoscowDepot           1    0
Tver_ATAKmk           1    0
Tver_ATAKo            1    0
Tver_LENTA            1    0
Tver_Magnit           1   15.73
Yaroslavl_7Continent  1    0
Yaroslavl_ASHANn      1    0
Yaroslavl_ASHANp      1    0
Yaroslavl_ATAK        1    0
Yaroslavl_Giperglobus 1   -4.99932e-09
Yaroslavl_LENTA       1    0
Yaroslavl_LENTA1      1    0
Yaroslavl_Magnit      1    0
;

CPLEX 12.6.0.0: timing 1

Interrupted!

<BREAK> (cplex)

Times (seconds):
Input =  0
Solve =  1737.56
Output = 1
CPLEX solution status 13 with fixed integers:
	aborted in phase II
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: aborted, integer solution exists; objective 1506.38
13143062 MIP simplex iterations
1907285 branch-and-bound nodes
absmipgap = 827.84, relmipgap = 0.549556

Tool completed successfully
