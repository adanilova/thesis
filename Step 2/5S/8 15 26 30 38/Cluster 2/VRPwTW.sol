Total_Cost = 735.25

X :=
Kostroma_7Continent   Yaroslavl_Magnit      1   1
MoscowDepot           Kostroma_7Continent   1   1
Yaroslavl_7Continent  Yaroslavl_ASHANn      1   1
Yaroslavl_ASHANn      MoscowDepot           1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_LENTA       1   1
Yaroslavl_Giperglobus Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA       Yaroslavl_Giperglobus 1   1
Yaroslavl_LENTA1      Yaroslavl_7Continent  1   1
Yaroslavl_Magnit      Yaroslavl_ATAK        1   1
;

Served :=
Kostroma_7Continent   10   1
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
Kostroma_7Continent   1   223
MoscowDepot           1   230.37
Yaroslavl_7Continent  1   226.49
Yaroslavl_ASHANn      1   226.73
Yaroslavl_ASHANp      1   225.74
Yaroslavl_ATAK        1   224.38
Yaroslavl_Giperglobus 1   225.28
Yaroslavl_LENTA       1   224.92
Yaroslavl_LENTA1      1   226.02
Yaroslavl_Magnit      1   224.1
;

DTime :=
Kostroma_7Continent   1   223.2
MoscowDepot           1   218.78
Yaroslavl_7Continent  1   226.69
Yaroslavl_ASHANn      1   226.93
Yaroslavl_ASHANp      1   225.94
Yaroslavl_ATAK        1   224.58
Yaroslavl_Giperglobus 1   225.48
Yaroslavl_LENTA       1   225.12
Yaroslavl_LENTA1      1   226.22
Yaroslavl_Magnit      1   224.3
;

RouteDuration [*] :=
1  9.79
;

WTime :=
Kostroma_7Continent   1   0
MoscowDepot           1   0
Yaroslavl_7Continent  1   0
Yaroslavl_ASHANn      1   0
Yaroslavl_ASHANp      1   0
Yaroslavl_ATAK        1   0
Yaroslavl_Giperglobus 1   0
Yaroslavl_LENTA       1   0
Yaroslavl_LENTA1      1   0
Yaroslavl_Magnit      1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0.015625
Solve =  0.984375
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 735.25
13398 MIP simplex iterations
2179 branch-and-bound nodes

Tool completed successfully