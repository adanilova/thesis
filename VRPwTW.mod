# Model VRPwTW

# SETS

set NODE;																																	# set of nodes (i,j)
param start symbolic;																											# depot
param end symbolic, <> start;																							# copy of depot
set ARC := {(i,j) in ((NODE diff {end}) cross (NODE diff{start})):i<>j};	# set of arcs
set CUSTOMER := {NODE diff {start, end}};
set VEHICLES;

# PARAMETRS

param demand {NODE} >= 0;							# demand at node i
param capacity{VEHICLES} >= 0; 				# capacity on vehicle
param travel_distance {ARC} >= 0;			# travel distance between nodes i and j

# TIME
param travel_time {ARC} >= 0; 				# travel time between nodes i and j
param start_window {NODE};						# start of time window at node i
param end_window {NODE};							# end of time window at node i
param service_time {NODE} >= 0; 			# service time at node i
param day_start:= start_window[start]; 		# start of time horizon
param day_end:= end_window [end];			# end of time horizon
						# big number
						# number of vehicles


# Variable

var X {ARC,VEHICLES} binary; 							# 1 if ark i,j is used by vehicle k
var WTime {i in NODE, k in VEHICLES} >= day_start, <= day_end;	 		# arrival for vehicle k at node i W
var Visit {i in CUSTOMER,k in VEHICLES} binary; 				# 1 if customer i was visited by vehicle k

# Model

minimize Travel_Cost:
	sum {k in VEHICLES, (i,j) in ARC} travel_distance[i,j] * X[i,j,k];


subject to Customer_Vehicle_Balance1 {j in CUSTOMER}:					#2 1 vehicle for customer i,j
	sum {k in VEHICLES,(i,j) in ARC} X [i,j,k]= 1;

subject to Depot_Vehicle_Balance {k in VEHICLES}:					#3 vehicle leave depot 1 time
	sum {(start,j) in ARC} X[start,j,k] = 1;

subject to Vehicle_Depot_Balance {k in VEHICLES}:					#4 vehicle returns to depo 1 time
	sum {(i, end) in ARC} X[i,end,k] = 1;

subject to Input_Output_Balance {j in CUSTOMER, k in VEHICLES}:				#5 if one vehicle come to node - one income
	sum {(i,j) in ARC} X[i,j,k] = sum {(j,i) in ARC} X[j,i,k];

subject to Loading {k in VEHICLES}:
	sum {i in CUSTOMER, (i,j) in ARC} demand[i] * X[i,j,k] <= capacity[k]; 		#6 capacity shoud not be exeed

subject to Start_Time {k in VEHICLES}: WTime[start,k] = 0;				#7 start time is 0


subject to TW {(i,j) in ARC,k in VEHICLES}:
	WTime[i,k] + service_time[i] + travel_time[i,j] - WTime[j,k]<= (1 - X[i,j,k])*
	max ((end_window[i] + service_time[i] + travel_time[i,j] - start_window[j]),0);	#8

subject to time1 {i in CUSTOMER, k in VEHICLES}:					#9
	start_window[i] * Visit[i,k] <= WTime[i,k];

subject to time2 {i in CUSTOMER, k in VEHICLES}:					#9
	WTime[i,k]<= end_window[i] -service_time[i];

subject to VisitedNode {i in CUSTOMER, k in VEHICLES}:
	Visit[i,k] = sum {(i,j) in ARC} X[i,j,k];
