Total_Cost = 746.5

X :=
Kostroma_7Continent   Kostroma_ASHAN        1   1
Kostroma_ASHAN        MoscowDepot           1   1
MoscowDepot           Yaroslavl_ASHANn      1   1
Yaroslavl_7Continent  Yaroslavl_LENTA       1   1
Yaroslavl_ASHANn      Yaroslavl_7Continent  1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_Magnit      1   1
Yaroslavl_Giperglobus Yaroslavl_ATAK        1   1
Yaroslavl_LENTA       Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA1      Yaroslavl_Giperglobus 1   1
Yaroslavl_Magnit      Kostroma_7Continent   1   1
;

Served :=
Kostroma_7Continent   3   1
Kostroma_ASHAN        3   1
Yaroslavl_7Continent  3   1
Yaroslavl_ASHANn      3   1
Yaroslavl_ASHANp      3   1
Yaroslavl_ATAK        3   1
Yaroslavl_Giperglobus 3   1
Yaroslavl_LENTA       3   1
Yaroslavl_LENTA1      3   1
Yaroslavl_Magnit      3   1
;

ATime :=
Kostroma_7Continent   1   60.75
Kostroma_ASHAN        1   61.07
MoscowDepot           1   65.61
Yaroslavl_7Continent  1   57.24
Yaroslavl_ASHANn      1   57
Yaroslavl_ASHANp      1   58.03
Yaroslavl_ATAK        1   59.38
Yaroslavl_Giperglobus 1   58.71
Yaroslavl_LENTA       1   57.76
Yaroslavl_LENTA1      1   58.31
Yaroslavl_Magnit      1   59.65
;

DTime :=
Kostroma_7Continent   1   60.95
Kostroma_ASHAN        1   61.27
MoscowDepot           1   53.67
Yaroslavl_7Continent  1   57.44
Yaroslavl_ASHANn      1   57.2
Yaroslavl_ASHANp      1   58.23
Yaroslavl_ATAK        1   59.58
Yaroslavl_Giperglobus 1   58.91
Yaroslavl_LENTA       1   57.96
Yaroslavl_LENTA1      1   58.51
Yaroslavl_Magnit      1   59.85
;

RouteDuration [*] :=
1  9.94
;

WTime :=
Kostroma_7Continent   1   0
Kostroma_ASHAN        1   0
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
Solve =  2.26562
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 746.5
25327 MIP simplex iterations
3416 branch-and-bound nodes

Tool completed successfully
