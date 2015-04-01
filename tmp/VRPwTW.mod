# Model VRPwTW

# SETS

set NODE;									# set of nodes (i,j)
param start symbolic;								# depot
param end symbolic, <> start;							# copy of depot
set ARC := {(i,j) in ((NODE diff {end}) cross (NODE diff{start})):i<>j};	# set of arcs
set CUSTOMER := {NODE diff {start, end}};					# set of customers
set VEHICLES;									# set of vehicles

# PARAMETRS

param demand {NODE} >= 0;							# demand at node i
param capacity {VEHICLES} >= 0; 						# capacity on vehicle
param travel_distance {ARC} >= 0;						# travel distance between nodes i and j
param depot_SE {k in VEHICLES} binary;						# 1 if vehicle k starts and ends at depot
param fix_cost {k in VEHICLES} = 1;						# fixed cost (in time units?)

# TIME

param travel_time {ARC} >= 0; 							# travel time between nodes i and j
param start_twindow {NODE};							# start of time window at node i
param end_twindow {NODE};							# end of time window at node i
param start_available {NODE};
param end_available {NODE};
param service_time {NODE} >= 0; 						# service time at node i
param day_start:= start_twindow[start];						# start of time horizon
param day_end:= end_twindow [end];						# end of time horizon
param M = 10000;								# large constarnt
param maxduration {VEHICLES};							# max rout duration

# VARIABLES

var X {ARC,VEHICLES} binary; 							# 1 if ark i,j is used by vehicle k
var Visit {i in CUSTOMER,k in VEHICLES} binary; 				# 1 if customer i was visited by vehicle k
var VehUsed {k in VEHICLES} binary;						# 1 if  vehicle k is used
var CustAssigne {i in NODE, k in VEHICLES} binary;				# 1 if customer i in assigned to vehicle k
var Served {i in NODE} binary;							# 1 if customer i is served within time window p
var Flow {NODE,VEHICLES};							# flow on ARC (i,j)
var ATime {i in NODE, k in VEHICLES} >= day_start, <= day_end;	 		# arrival time for vehicle k at node i
var DTime {i in NODE, k in VEHICLES} >= day_start, <= day_end;			# departure time for vehicle k at node i
var RouteDuration {VEHICLES};							# route duration of vehicle k
var WTime {i in NODE, k in VEHICLES} >= day_start, <= day_end;			# waiting time of vehicle k at customer i
var TDemand {k in VEHICLES};							# total demand loaded in vehicle k at depot
var Available {ARC, VEHICLES};



# MODEL

minimize Travel_Cost:
	sum {k in VEHICLES, (i,j) in ARC} travel_time [i,j] * X[i,j,k] +        # total travel time
	sum {k in VEHICLES, i in CUSTOMER} WTime [i,k] +			# total waiting time
	sum {k in VEHICLES} fix_cost [k] * VehUsed [k];				# total vehicle cost

# CONSTRAINTS

subject to ARC_Vehicle_Balance1 {j in CUSTOMER}:				#2 1 vehicle for customer i,j
	sum {(i,j) in ARC, k in VEHICLES} X [i,j,k]= 1;

subject to Custimer_Vehicle_Balance {i in CUSTOMER}:
	sum {k in VEHICLES} CustAssigne[i,k] = 1;

subject to Depot_Vehicle_Balance {k in VEHICLES}:				#3 vehicle leave depot 1 time
	sum {(start,j) in ARC} X[start,j,k] = 1;

subject to Vehicle_Depot_Balance {k in VEHICLES}:				#4 vehicle returns to depot 1 time
	sum {(i, end) in ARC} X[i,end,k] = 1;

subject to Input_Output_Balance {j in CUSTOMER, k in VEHICLES}:			#5 if one vehicle come to node - one income
	sum {(i,j) in ARC} X[i,j,k] = sum {(j,i) in ARC} X[j,i,k];

subject to Loading {k in VEHICLES}:
	sum {i in CUSTOMER, (i,j) in ARC} demand[i] * X[i,j,k] <= capacity[k]; 	#6 capacity should not be exeed

subject to WStart_Time {k in VEHICLES}:
	WTime [start,k] = 0;							#7 start waiting time is 0




subject to VisitedNode {i in CUSTOMER, k in VEHICLES}:
	Visit[i,k] = sum {(i,j) in ARC} X[i,j,k];

subject to TotalDemand {k in VEHICLES}:						# total demand on route
	TDemand[k] = sum {i in CUSTOMER}Visit[i,k]*demand[i];

subject to VehicleRouteDuration {k in VEHICLES}:				# total route travel time
	RouteDuration[k] = sum {(i,j) in ARC} travel_time [i,j] * X[i,j,k];



#subject to TW {(i,j) in ARC,k in VEHICLES}:
#	WTime[i,k] + service_time[i] + travel_time[i,j] - WTime[j,k]<=
#	(1 - X[i,j,k]) * max ((end_twindow[i] + service_time[i] +
#	travel_time[i,j] - start_twindow[j]),0);				#8

#subject to time1 {i in CUSTOMER, k in VEHICLES}:				#9
#	start_twindow[i] * Visit[i,k] <= ATime[i,k] + WTime[i,k];
#
#subject to time2 {i in CUSTOMER, k in VEHICLES}:				#9
#	DTime[i,k]<= end_twindow[i]* Visit[i,k] -service_time[i];

#subject to WaitingTimeAtNode {i in CUSTOMER,k in VEHICLES}:
#	WTime [i,k] <= start_twindow[i]* Visit[i,k] - ATime[i,k];

####################################

subject to DemandSatisfaction {k in VEHICLES}:					##7
	(sum {(i,j) in ARC} (Flow[j,k] - Flow[i,k]))
	= TDemand[k];

subject to RoutLoading {i in CUSTOMER, k in VEHICLES}:				##8 satisfaction of the demand of each customers on arc
	(sum {(i,j) in ARC} (Flow[j,k] - Flow[i,k]))
	>= demand[i]*CustAssigne[i,k];

subject to Traverse {k in VEHICLES, (i,j) in ARC}:				##3 any ARC (i,j) can be traversed by vehicle k if both CustAssigne = 1
	2 * X [i,j,k] <= CustAssigne [i,k] + CustAssigne [j,k];

subject to maxRouteDuration {i in NODE,k in VEHICLES}:
	ATime[start,k] - DTime[end,k] <= maxduration[k] - M*(1-CustAssigne[i,k]);


subject to DepartureTime {i in CUSTOMER, k in VEHICLES}:			##12 Departure time >= arrival time + service_time
	DTime[i,k] >= ATime[i,k]+WTime[i,k] + service_time[i] -
	M*(1-CustAssigne[i,k]);

subject to ArrivalTime {(i,j) in ARC, k in VEHICLES}:				##13
	ATime [j,k] >= DTime[i,k] + travel_time[i,j] -
	M*(1-X[i,j,k]);

subject to ArrivalTime1 {(i,j) in ARC, k in VEHICLES}:				##14
	ATime [j,k] <= DTime[i,k] + travel_time[i,j] +
	M*(1-X[i,j,k]);

subject to Availability {(i,j) in ARC, k in VEHICLES}:				# constraint for customer availability
	Available[i,j,k] <= ATime[i,k] / 24;

subject to STW {(i,j) in ARC, k in VEHICLES}:					##15
	ATime[i,k] + WTime [i,k] >= start_twindow [i] -
	M*(1-CustAssigne[i,k]) - M*(1-Served[i]);

subject to ETW {(i,j) in ARC, k in VEHICLES}:					##16
	ATime[i,k] + WTime [i,k] <= end_twindow [i] -
	M*(1-CustAssigne[i,k]) - M*(1-Served[i]);
