Travel_Cost = 10.04

X :=
Kostroma_7Continent   Yaroslavl_Magnit      1   1
Kostroma_ASHAN        Kostroma_7Continent   1   1
MoscowDepot           Kostroma_ASHAN        1   1
Yaroslavl_7Continent  Yaroslavl_ASHANn      1   1
Yaroslavl_ASHANn      MoscowDepotEND        1   1
Yaroslavl_ASHANp      Yaroslavl_LENTA1      1   1
Yaroslavl_ATAK        Yaroslavl_LENTA       1   1
Yaroslavl_Giperglobus Yaroslavl_7Continent  1   1
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
  Kostroma_7Continent  1
       Kostroma_ASHAN  1
          MoscowDepot  1
 Yaroslavl_7Continent  1
     Yaroslavl_ASHANn  1
     Yaroslavl_ASHANp  1
       Yaroslavl_ATAK  1
Yaroslavl_Giperglobus  1
      Yaroslavl_LENTA  1
     Yaroslavl_LENTA1  1
     Yaroslavl_Magnit  1
;

Flow :=
MoscowDepot      1   1585.36
MoscowDepotEND   1   2114.27
Yaroslavl_LENTA1 1    125.727
;

ATime :=
Kostroma_7Continent   1    7.33
Kostroma_ASHAN        1    7
MoscowDepotEND        1   19.64
Yaroslavl_7Continent  1   15.76
Yaroslavl_ASHANn      1   16
Yaroslavl_ASHANp      1    9.53
Yaroslavl_ATAK        1    8.71
Yaroslavl_Giperglobus 1   15.15
Yaroslavl_LENTA       1    9.26
Yaroslavl_LENTA1      1    9.81
Yaroslavl_Magnit      1    8.43
;

DTime :=
Kostroma_7Continent   1    7.53
Kostroma_ASHAN        1    7.2
MoscowDepot           1    2.66
Yaroslavl_7Continent  1   15.96
Yaroslavl_ASHANn      1   16.2
Yaroslavl_ASHANp      1    9.73
Yaroslavl_ATAK        1    8.91
Yaroslavl_Giperglobus 1   15.35
Yaroslavl_LENTA       1    9.46
Yaroslavl_LENTA1      1   14.95
Yaroslavl_Magnit      1    8.63
;

RouteDuration [*] :=
;

WTime :=
;

TDemand [*] :=
1  5818
;

