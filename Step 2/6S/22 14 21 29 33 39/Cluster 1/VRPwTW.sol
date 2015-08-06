Total_Cost = 419.5

X :=
MoscowDepot Tver_LENTA  1   1
Tver_ATAKmk MoscowDepot 1   1
Tver_ATAKo  Tver_Magnit 1   1
Tver_LENTA  Tver_ATAKo  1   1
Tver_Magnit Tver_ATAKmk 1   1
;

Served :=
Tver_ATAKmk 12   1
Tver_ATAKo  12   1
Tver_LENTA  12   1
Tver_Magnit 12   1
;

ATime :=
MoscowDepot 1   276.01
Tver_ATAKmk 1   273.29
Tver_ATAKo  1   272.29
Tver_LENTA  1   272
Tver_Magnit 1   272.78
;

DTime :=
MoscowDepot 1   269.63
Tver_ATAKmk 1   273.49
Tver_ATAKo  1   272.49
Tver_LENTA  1   272.2
Tver_Magnit 1   272.98
;

RouteDuration [*] :=
1  5.58
;

WTime :=
MoscowDepot 1   0
Tver_ATAKmk 1   0
Tver_ATAKo  1   0
Tver_LENTA  1   0
Tver_Magnit 1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  0.0625
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        �
CPLEX 12.6.0.0: optimal integer solution; objective 419.5
76 MIP simplex iterations
0 branch-and-bound nodes

Tool completed successfully
