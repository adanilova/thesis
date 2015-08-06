Total_Cost = 675.25

X :=
Ivanovo_7Continent MoscowDepot        1   1
Ivanovo_ASHAN      Ivanovo_7Continent 1   1
Ivanovo_Magnit     Ivanovo_Okey       1   1
Ivanovo_Okey       Ivanovo_ASHAN      1   1
MoscowDepot        Ivanovo_Magnit     1   1
;

Served :=
Ivanovo_7Continent 1   1
Ivanovo_ASHAN      1   1
Ivanovo_Magnit     1   1
Ivanovo_Okey       1   1
;

ATime :=
Ivanovo_7Continent 1    7.93
Ivanovo_ASHAN      1    7.65
Ivanovo_Magnit     1    7
Ivanovo_Okey       1    7.29
MoscowDepot        1   12.53
;

DTime :=
Ivanovo_7Continent 1   8.13
Ivanovo_ASHAN      1   7.85
Ivanovo_Magnit     1   7.2
Ivanovo_Okey       1   7.49
MoscowDepot        1   2.74
;

RouteDuration [*] :=
1  8.99
;

WTime :=
Ivanovo_7Continent 1   0
Ivanovo_ASHAN      1   0
Ivanovo_Magnit     1   0
Ivanovo_Okey       1   0
MoscowDepot        1   0
;
