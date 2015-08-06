Total_Cost = 924.25

X :=
MoscowDepot      NNovgorod_METROm 1   1
NNovgorod_ASHANb NNovgorod_ASHANm 1   1
NNovgorod_ASHANm NNovgorod_METROn 1   1
NNovgorod_LENTA  NNovgorod_ASHANb 1   1
NNovgorod_METROm NNovgorod_LENTA  1   1
NNovgorod_METROn NNovgorod_Magnit 1   1
NNovgorod_Magnit NNovgorod_Okey   1   1
NNovgorod_Okey   MoscowDepot      1   1
;

Served :=
NNovgorod_ASHANb 10   1
NNovgorod_ASHANm 10   1
NNovgorod_LENTA  10   1
NNovgorod_METROm 10   1
NNovgorod_METROn 10   1
NNovgorod_Magnit 10   1
NNovgorod_Okey   10   1
;

ATime :=
MoscowDepot      1   231.88
NNovgorod_ASHANb 1   224.4
NNovgorod_ASHANm 1   224.88
NNovgorod_LENTA  1   224
NNovgorod_METROm 1   223.74
NNovgorod_METROn 1   225.27
NNovgorod_Magnit 1   225.67
NNovgorod_Okey   1   226.02
;

DTime :=
MoscowDepot      1   218.17
NNovgorod_ASHANb 1   224.6
NNovgorod_ASHANm 1   225.08
NNovgorod_LENTA  1   224.2
NNovgorod_METROm 1   223.94
NNovgorod_METROn 1   225.47
NNovgorod_Magnit 1   225.87
NNovgorod_Okey   1   226.22
;

RouteDuration [*] :=
1  12.31
;

WTime :=
MoscowDepot      1   0
NNovgorod_ASHANb 1   0
NNovgorod_ASHANm 1   0
NNovgorod_LENTA  1   0
NNovgorod_METROm 1   0
NNovgorod_METROn 1   0
NNovgorod_Magnit 1   0
NNovgorod_Okey   1   0
;
