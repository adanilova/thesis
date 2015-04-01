Travel_Cost = 68.22

X :=
Kostroma_7Continent   Kostroma_ASHAN        1   1
Kostroma_ASHAN        Yaroslavl_ASHANn      1   1
MoscowDepot           Yaroslavl_7Continent  1   1
Yaroslavl_7Continent  Yaroslavl_LENTA1      1   1
Yaroslavl_ASHANn      Yaroslavl_ASHANp      1   1
Yaroslavl_ASHANp      MoscowDepotEND        1   1
Yaroslavl_ATAK        Yaroslavl_Magnit      1   1
Yaroslavl_Giperglobus Yaroslavl_LENTA       1   1
Yaroslavl_LENTA       Yaroslavl_ATAK        1   1
Yaroslavl_LENTA1      Yaroslavl_Giperglobus 1   1
Yaroslavl_Magnit      Kostroma_7Continent   1   1
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
MoscowDepot      1   1588.09
MoscowDepotEND   1   2117
Yaroslavl_LENTA1 1    126
;

ATime :=
Kostroma_7Continent   1   0.34
Kostroma_ASHAN        1   0.02
Yaroslavl_7Continent  1   3.68
Yaroslavl_ASHANn      1   0.73
Yaroslavl_ASHANp      1   0.27
Yaroslavl_ATAK        1   1.71
Yaroslavl_Giperglobus 1   2.76
Yaroslavl_LENTA       1   2.24
Yaroslavl_LENTA1      1   3.16
Yaroslavl_Magnit      1   1.44
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
1  10.57
;

WTime :=
Kostroma_7Continent   1    6.66
Kostroma_ASHAN        1    6.98
MoscowDepotEND        1   50
Yaroslavl_7Continent  1    3.32
Yaroslavl_ASHANn      1    8.27
Yaroslavl_ASHANp      1    8.73
Yaroslavl_ATAK        1    5.29
Yaroslavl_Giperglobus 1    4.24
Yaroslavl_LENTA       1    4.76
Yaroslavl_LENTA1      1    3.84
Yaroslavl_Magnit      1    5.56
;

TDemand [*] :=
1  5818
;
