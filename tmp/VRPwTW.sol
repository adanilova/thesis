Travel_Cost = 99.6

X :=
Kostroma_7Continent   Kostroma_ASHAN        1   1
Kostroma_ASHAN        MoscowDepotEND        1   1
MoscowDepot           Yaroslavl_Magnit      1   1
Yaroslavl_7Continent  Yaroslavl_ASHANn      1   1
Yaroslavl_ASHANn      Kostroma_7Continent   1   1
Yaroslavl_ASHANp      Yaroslavl_7Continent  1   1
Yaroslavl_ATAK        Yaroslavl_LENTA1      1   1
Yaroslavl_Giperglobus Yaroslavl_LENTA       1   1
Yaroslavl_LENTA       Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA1      Yaroslavl_Giperglobus 1   1
Yaroslavl_Magnit      Yaroslavl_ATAK        1   1
;

Visit :=
Kostroma_7Continent   1   1
Kostroma_ASHAN        1   1
Yaroslavl_7Continent  1   1
Yaroslavl_ASHANn      1   1
Yaroslavl_ASHANp      1   1
Yaroslavl_ATAK        1   1
Yaroslavl_Giperglobus 1   1
Yaroslavl_LENTA       1   1
Yaroslavl_LENTA1      1   1
Yaroslavl_Magnit      1   1
;

Served [*] :=
;

Flow :=
MoscowDepot      1   1585.36
MoscowDepotEND   1   2114.27
Yaroslavl_LENTA1 1    125.727
;

ATime :=
;

DTime :=
Kostroma_7Continent   1   50
Kostroma_ASHAN        1   50
Yaroslavl_7Continent  1   50
Yaroslavl_ASHANn      1   50
Yaroslavl_ASHANp      1   50
Yaroslavl_ATAK        1   50
Yaroslavl_Giperglobus 1   50
Yaroslavl_LENTA       1   50
Yaroslavl_LENTA1      1   50
Yaroslavl_Magnit      1   50
;

RouteDuration [*] :=
;

WTime :=
Kostroma_7Continent   1   10.85
Kostroma_ASHAN        1   11.17
MoscowDepotEND        1   50
Yaroslavl_7Continent  1    9.44
Yaroslavl_ASHANn      1    9.68
Yaroslavl_ASHANp      1    9.02
Yaroslavl_ATAK        1    7.28
Yaroslavl_Giperglobus 1    8.23
Yaroslavl_LENTA       1    8.75
Yaroslavl_LENTA1      1    7.83
Yaroslavl_Magnit      1    7
;

TDemand [*] :=
1  5818
;

