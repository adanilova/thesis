Travel_Cost = 61.28

X :=
Kostroma_7Continent   Kostroma_ASHAN        1   1
Kostroma_ASHAN        MoscowDepotEND        1   1
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
Kostroma_7Continent   1   7
Kostroma_ASHAN        1   7
Yaroslavl_7Continent  1   7
Yaroslavl_ASHANn      1   9
Yaroslavl_ASHANp      1   9
Yaroslavl_ATAK        1   7
Yaroslavl_Giperglobus 1   7
Yaroslavl_LENTA       1   7
Yaroslavl_LENTA1      1   7
Yaroslavl_Magnit      1   7
;

DTime :=
Kostroma_7Continent   1   15.8
Kostroma_ASHAN        1   15.8
Yaroslavl_7Continent  1   15.8
Yaroslavl_ASHANn      1   15.8
Yaroslavl_ASHANp      1   15.8
Yaroslavl_ATAK        1   15.8
Yaroslavl_Giperglobus 1   15.8
Yaroslavl_LENTA       1   15.8
Yaroslavl_LENTA1      1   15.8
Yaroslavl_Magnit      1   15.8
;

RouteDuration [*] :=
;

WTime :=
Kostroma_7Continent   1    7.08
Kostroma_ASHAN        1    7.4
MoscowDepotEND        1   50
Yaroslavl_7Continent  1    3.57
Yaroslavl_ASHANn      1    3.33
Yaroslavl_ASHANp      1    4.36
Yaroslavl_ATAK        1    5.71
Yaroslavl_Giperglobus 1    5.04
Yaroslavl_LENTA       1    4.09
Yaroslavl_LENTA1      1    4.64
Yaroslavl_Magnit      1    5.98
;

TDemand [*] :=
1  5818
;
