Total_Cost = 1663

X :=
Kazan_ASHANp  Kazan_Zelgros 1   1
Kazan_ASHANy  MoscowDepot   1   1
Kazan_Zelgros Kazan_ASHANy  1   1
MoscowDepot   Kazan_ASHANp  1   1
;

Served :=
Kazan_ASHANp  1   1
Kazan_ASHANy  1   1
Kazan_Zelgros 1   1
;

ATime :=
Kazan_ASHANp  1   13
Kazan_ASHANy  1   13.84
Kazan_Zelgros 1   13.37
MoscowDepot   1   24.87
;

DTime :=
Kazan_ASHANp  1   13.2
Kazan_ASHANy  1   14.04
Kazan_Zelgros 1   13.57
MoscowDepot   1    2.11
;

RouteDuration [*] :=
1  22.16
;

WTime :=
Kazan_ASHANp  1   0
Kazan_ASHANy  1   0
Kazan_Zelgros 1   0
MoscowDepot   1   0
;

CPLEX 12.6.0.0: timing 1

Times (seconds):
Input =  0
Solve =  0.046875
Output = 0
IBM ILOG CPLEX Optimization Studio Commercial Edition                        ÿ
CPLEX 12.6.0.0: optimal integer solution; objective 1663
48 MIP simplex iterations
0 branch-and-bound nodes

Tool completed successfully