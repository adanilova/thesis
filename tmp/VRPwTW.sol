Travel_Cost = 10.93

X :=
Kostroma_7Continent   Yaroslavl_Magnit      1   1
Kostroma_ASHAN        Kostroma_7Continent   1   1
MoscowDepot           Kostroma_ASHAN        1   1
Yaroslavl_7Continent  Yaroslavl_ASHANn      1   1
Yaroslavl_ASHANn      MoscowDepot           1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_LENTA       1   1
Yaroslavl_Giperglobus Yaroslavl_7Continent  1   1
Yaroslavl_LENTA       Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA1      Yaroslavl_Giperglobus 1   1
Yaroslavl_Magnit      Yaroslavl_ATAK        1   1
;

Visit :=
;

Served :=
Kostroma_7Continent   1   1
Kostroma_ASHAN        1   1
Yaroslavl_7Continent  5   1
Yaroslavl_ASHANn      5   1
Yaroslavl_ASHANp      1   1
Yaroslavl_ATAK        1   1
Yaroslavl_Giperglobus 5   1
Yaroslavl_LENTA       1   1
Yaroslavl_LENTA1      5   1
Yaroslavl_Magnit      1   1
;

Flow :=
MoscowDepot 1   2240
;

ATime :=
Kostroma_7Continent   1    12.45
Kostroma_ASHAN        1    12.12
MoscowDepot           1   107.78
Yaroslavl_7Continent  1   104.01
Yaroslavl_ASHANn      1   104.25
Yaroslavl_ASHANp      1    14.65
Yaroslavl_ATAK        1    13.83
Yaroslavl_Giperglobus 1   103.4
Yaroslavl_LENTA       1    14.38
Yaroslavl_LENTA1      1   103
Yaroslavl_Magnit      1    13.55
;

DTime :=
Kostroma_7Continent   1    12.65
Kostroma_ASHAN        1    12.32
MoscowDepot           1     7.78
Yaroslavl_7Continent  1   104.21
Yaroslavl_ASHANn      1   104.45
Yaroslavl_ASHANp      1   102.92
Yaroslavl_ATAK        1    14.03
Yaroslavl_Giperglobus 1   103.6
Yaroslavl_LENTA       1    14.58
Yaroslavl_LENTA1      1   103.2
Yaroslavl_Magnit      1    13.75
;

RouteDuration [*] :=
1  9.93
;

WTime :=
;

TDemand [*] :=
;
