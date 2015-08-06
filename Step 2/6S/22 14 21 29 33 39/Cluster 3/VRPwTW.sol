Total_Cost = 889

X :=
MoscowDepot      NNovgorod_Magnit 1   1
NNovgorod_ASHANb NNovgorod_METROm 1   1
NNovgorod_ASHANm MoscowDepot      1   1
NNovgorod_LENTA  NNovgorod_ASHANb 1   1
NNovgorod_METROm NNovgorod_ASHANm 1   1
NNovgorod_Magnit NNovgorod_LENTA  1   1
;

Served :=
NNovgorod_ASHANb 3   1
NNovgorod_ASHANm 3   1
NNovgorod_LENTA  3   1
NNovgorod_METROm 3   1
NNovgorod_Magnit 3   1
;

ATime :=
MoscowDepot      1   62.92
NNovgorod_ASHANb 1   56.4
NNovgorod_ASHANm 1   57.12
NNovgorod_LENTA  1   56
NNovgorod_METROm 1   56.85
NNovgorod_Magnit 1   55.61
;

DTime :=
MoscowDepot      1   50.08
NNovgorod_ASHANb 1   56.6
NNovgorod_ASHANm 1   57.32
NNovgorod_LENTA  1   56.2
NNovgorod_METROm 1   57.05
NNovgorod_Magnit 1   55.81
;

RouteDuration [*] :=
1  11.84
;

WTime :=
MoscowDepot      1   0
NNovgorod_ASHANb 1   0
NNovgorod_ASHANm 1   0
NNovgorod_LENTA  1   0
NNovgorod_METROm 1   0
NNovgorod_Magnit 1   0
;
