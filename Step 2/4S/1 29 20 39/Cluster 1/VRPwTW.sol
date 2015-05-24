Total_Cost = 1386.38

X :=
MoscowDepot           Yaroslavl_7Continent  1   1
Tver_ATAKmk           Tver_Magnit           1   1
Tver_ATAKo            Tver_ATAKmk           1   1
Tver_LENTA            MoscowDepot           1   1
Tver_Magnit           Tver_LENTA            1   1
Yaroslavl_7Continent  Yaroslavl_ATAK        1   1
Yaroslavl_ASHANn      Yaroslavl_LENTA       1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_Magnit      1   1
Yaroslavl_Giperglobus Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA       Yaroslavl_Giperglobus 1   1
Yaroslavl_LENTA1      Tver_ATAKo            1   1
Yaroslavl_Magnit      Yaroslavl_ASHANn      1   1
;

Served :=
Tver_ATAKmk           3   1
Tver_ATAKo            3   1
Tver_LENTA            4   1
Tver_Magnit           4   1
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
MoscowDepot           1   83.11
Tver_ATAKmk           1   63.8
Tver_ATAKo            1   63.37
Tver_LENTA            1   80.51
Tver_Magnit           1   64.27
Yaroslavl_7Continent  1   56.33
Yaroslavl_ASHANn      1   57.42
Yaroslavl_ASHANp      1   58.78
Yaroslavl_ATAK        1   56.72
Yaroslavl_Giperglobus 1   58.32
Yaroslavl_LENTA       1   57.96
Yaroslavl_LENTA1      1   59.06
Yaroslavl_Magnit      1   56.99
;

DTime :=
MoscowDepot           1   53.01
Tver_ATAKmk           1   64
Tver_ATAKo            1   63.57
Tver_LENTA            1   80.71
Tver_Magnit           1   80.2
Yaroslavl_7Continent  1   56.53
Yaroslavl_ASHANn      1   57.62
Yaroslavl_ASHANp      1   58.98
Yaroslavl_ATAK        1   56.92
Yaroslavl_Giperglobus 1   58.52
Yaroslavl_LENTA       1   58.16
Yaroslavl_LENTA1      1   59.26
Yaroslavl_Magnit      1   57.19
;

RouteDuration [*] :=
1  11.97
;

WTime :=
MoscowDepot           1    0
Tver_ATAKmk           1    0
Tver_ATAKo            1    0
Tver_LENTA            1    0
Tver_Magnit           1   15.73
Yaroslavl_7Continent  1    0
Yaroslavl_ASHANn      1    0
Yaroslavl_ASHANp      1    0
Yaroslavl_ATAK        1    0
Yaroslavl_Giperglobus 1    0
Yaroslavl_LENTA       1    0
Yaroslavl_LENTA1      1    0
Yaroslavl_Magnit      1    0
;

CPLEX 12.6.0.0: timing 1

Interrupted!

<BREAK> (cplex)

Times (seconds):
Input =  0
Solve =  5804.34
Output = 1.98438
CPLEX solution status 13 with fixed integers:
	aborted in phase II
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: aborted, integer solution exists; objective 1386.38
30309011 MIP simplex iterations
3757811 branch-and-bound nodes
absmipgap = 654.764, relmipgap = 0.472283

Tool completed successfully
