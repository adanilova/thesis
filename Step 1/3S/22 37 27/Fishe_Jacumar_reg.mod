

minimize Travel_time: sum{k in SEED, j in CUSTOMER: k<>j}assign[k,j]*distance[k,j];


subject to single_assign {j in CUSTOMER}:
sum{k in SEED}assign[k,j]=1;


#subject to single_assign_ggg{k in SEED}:
#sum{j in CUSTOMER}assign[k,j]>=5;

subject to single_assign_gggg{k in SEED}:
sum{j in CUSTOMER}demand[j]*assign[k,j]<=capacity;









