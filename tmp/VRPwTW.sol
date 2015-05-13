Travel_Cost = 11.1

X :=
Kostroma_7Continent   Yaroslavl_Magnit      1   1
Kostroma_ASHAN        Kostroma_7Continent   1   1
MoscowDepot           Kostroma_ASHAN        1   1
Yaroslavl_7Continent  MoscowDepot           1   1
Yaroslavl_ASHANn      Yaroslavl_7Continent  1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_LENTA       1   1
Yaroslavl_Giperglobus Yaroslavl_ASHANn      1   1
Yaroslavl_LENTA       Yaroslavl_ASHANp      1   1
Yaroslavl_LENTA1      Yaroslavl_Giperglobus 1   1
Yaroslavl_Magnit      Yaroslavl_ATAK        1   1
;

Visit :=
;

Served :=
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

Flow :=
;

ATime :=
Kostroma_7Continent   1    7
Kostroma_ASHAN        1    5.84
MoscowDepot           1   14.27
Yaroslavl_7Continent  1   10.75
Yaroslavl_ASHANn      1   10.51
Yaroslavl_ASHANp      1    9.2
Yaroslavl_ATAK        1    8.38
Yaroslavl_Giperglobus 1    9.88
Yaroslavl_LENTA       1    8.93
Yaroslavl_LENTA1      1    9.48
Yaroslavl_Magnit      1    8.1
;

DTime :=
Kostroma_7Continent   1    7.2
Kostroma_ASHAN        1    6.87
MoscowDepot           1    1.5
Yaroslavl_7Continent  1   10.95
Yaroslavl_ASHANn      1   10.71
Yaroslavl_ASHANp      1    9.4
Yaroslavl_ATAK        1    8.58
Yaroslavl_Giperglobus 1   10.08
Yaroslavl_LENTA       1    9.13
Yaroslavl_LENTA1      1    9.68
Yaroslavl_Magnit      1    8.3
;

RouteDuration [*] :=
1  9.94
;

WTime :=
Kostroma_ASHAN 1   0.16
;

TDemand [*] :=
;

