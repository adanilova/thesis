# Model VRPwTW

# SETS

set NODE;									# set of nodes (i,j)
param start symbolic;								# depot
param end symbolic, <> start;							# copy of depot
param L > 0;									# =1 for start of the TW, =2 for end of the TW for all customer i
set ARC := {(i,j) in ((NODE diff {end}) cross (NODE diff{start})):i<>j};	# set of arcs
set ARC1 := {(i,j) in (NODE cross NODE): i<>j};					# set of arcs
set CUSTOMER := {NODE diff {start, end}};					# set of customers
set VEHICLES;									# set of vehicles
set TIMEWINDOWS {i in CUSTOMER, l in 1..L};					# set of start TW and end TW for every customer i
set CUSTTIMEWINDOWS {i in CUSTOMER};						# numb of TW per route for every customer i

# PARAMETRS

param timewind{i in CUSTOMER, l in 1..L, p in CUSTTIMEWINDOWS[i]};		# every start/end TW for every customer in every day per route
param demand {NODE} >= 0;							# demand at node i
param capacity {VEHICLES} >= 0; 						# capacity on vehicle
param travel_distance {ARC} >= 0;						# travel distance between nodes i and j
param fix_cost {k in VEHICLES} = 1;						# vehicle using cost

# TIME

param travel_time {ARC} >= 0; 							# travel time between nodes i and j
param start_twindow {NODE};							# start of time window at node i
param end_twindow {NODE};							# end of time window at node i
param start_available {NODE};							# start of serving period at node i
param end_available {NODE};							# end of serving period at node i
param service_time {NODE} >= 0; 						# service time at node i
param day_start:= start_twindow[start];						# start of time horizon
param day_end:= end_twindow [end];						# end of time horizon
param M = 10000;								# large constrant
param maxduration {VEHICLES};							# max route duration
param numbTWfC {i in CUSTOMER};							# number of warking day for every customer i

# VARIABLES

var X {ARC,VEHICLES} binary; 							# 1 if ark i,j is used by vehicle k
var Visit {i in CUSTOMER,k in VEHICLES} binary; 				# 1 if customer i was visited by vehicle k
var VehUsed {k in VEHICLES} binary;						# 1 if  vehicle k is used
var CustAssigne {i in NODE, k in VEHICLES} binary;				# 1 if customer i in assigned to vehicle k
var Served {i in CUSTOMER, p in CUSTTIMEWINDOWS[i]} binary;			# 1 if customer i is served within time window p
var Flow {NODE,VEHICLES};							# flow on ARC (i,j)
var ATime {i in NODE, k in VEHICLES} >= day_start, <= day_end;	 		# arrival time for vehicle k at node i
var DTime {i in NODE, k in VEHICLES} >= day_start, <= day_end;			# departure time for vehicle k at node i
var RouteDuration {VEHICLES};							# route duration of vehicle k
var WTime {i in NODE, k in VEHICLES} >= day_start, <= day_end;			# waiting time of vehicle k at customer i
var TDemand {k in VEHICLES};							# total demand loaded in vehicle k at depot

# MODEL

minimize Travel_Cost:
	sum {k in VEHICLES, (i,j) in ARC} travel_time [i,j] * X[i,j,k] +        # total travel time
	sum {k in VEHICLES, i in CUSTOMER} WTime [i,k] +			# total waiting time
	sum {k in VEHICLES} fix_cost [k] * VehUsed [k];				# total vehicle cost

# CONSTRAINTS

#subject to Custimer_Vehicle_Balance {i in NODE}:				#1 one vehicle for customer i,j
#	sum {k in VEHICLES} CustAssigne[i,k] = 1;

subject to ARC_Vehicle_Balance1 {j in CUSTOMER}:				#2 one vehicle for arc i,j
	sum {(i,j) in ARC, k in VEHICLES} X [i,j,k]= 1;

subject to Input_Output_Balance2 {i in CUSTOMER, k in VEHICLES}:		#5 if one vehicle come to node - one income
	sum {(i,j) in ARC:i<>j} X[i,j,k] = sum {(j,i) in ARC:i<>j} X[j,i,k];

subject to Traverse {k in VEHICLES, (i,j) in ARC}:				##3 any ARC (i,j) can be traversed by vehicle k if both CustAssigne = 1
	2 * X [i,j,k] <= CustAssigne [i,k] + CustAssigne [j,k];

subject to LOL {i in NODE:i<>end}:						##4 every customer i visited by 1 vehicle
	sum {k in VEHICLES, j in NODE:j<>start and i<>j} X[i,j,k] <=1;

subject to LOL1 {i in NODE:i<>start}:						##5 every customer i visited by 1 vehicle
	sum {k in VEHICLES, j in NODE:j<>end and j<>i} X[j,i,k] <=1;

subject to Loading {k in VEHICLES}:
	sum {i in CUSTOMER, (i,j) in ARC} demand[i] * X[i,j,k] <= capacity[k];	#6 capacity should not be exeed

subject to DepotDTimeStart {k in VEHICLES}:					##9 departure time from the depot didn't exeed lower bound TW
	DTime[start,k] >= end_twindow[start] - M*(1 - CustAssigne[start,k]);

subject to DepotDTimeEnd {k in VEHICLES}:					##10 arrival time at the depot didn't exeed upper bound TW
	ATime[end,k] <= start_twindow[end] + M*(1 - CustAssigne[end,k]);

subject to Equal {k in VEHICLES}:						# vehicle starts and ends at the depot
	CustAssigne[end,k]=CustAssigne[start,k];

subject to BetweenStartEnd {k in VEHICLES}:					##11 duration of each rout should exceed max route duration
	ATime[end,k]-DTime[start,k] <= maxduration[k] +
	M*(2 -(CustAssigne[end,k]+CustAssigne[start,k]));

subject to DepartureTime {i in CUSTOMER, k in VEHICLES}:			##12 departure time >= arrival time + service_time
	DTime[i,k] >= ATime[i,k]+WTime[i,k] + service_time[i] -
	M*(1-CustAssigne[i,k]);

subject to ArrivalTime {(i,j) in ARC, k in VEHICLES}:				##13 arrival t at customer j = departure t from customer i +
	ATime [j,k] >= DTime[i,k] + travel_time[i,j] -				## + travel time from i to j only if arc assigned to vehicle k
	M*(1-X[i,j,k]);

subject to ArrivalTime1 {(i,j) in ARC, k in VEHICLES}:				##14 same with 13
	ATime [j,k] <= DTime[i,k] + travel_time[i,j] +
	M*(1-X[i,j,k]);

#subject to Equal1 {i in NODE}:							# WHAT2
	#ServedS[i,p]=ServedE[i,p];

subject to STW {i in CUSTOMER, l in 1..L, p in CUSTTIMEWINDOWS[i], k in VEHICLES}:	##15 arrival time + waiting time >= start TW, only if
	ATime[i,k] + WTime [i,k] >= timewind[i,1,p] -					# customer i is assigned to vehicle k and TW p is chosen
	M*(1-CustAssigne[i,k]) - M*(1-Served[i,p]);

subject to ETW {i in CUSTOMER,l in 1..L,  p in CUSTTIMEWINDOWS[i], k in VEHICLES}:	##16 arrival time + waiting time <= end TW, only if
	ATime[i,k] + WTime [i,k] <= timewind[i,2,p] +					# customer i is assigned to vehicle k and TW p is chosen
	M*(1-CustAssigne[i,k]) + M*(1-Served[i,p]);

subject to visit {i in CUSTOMER}:						#17 one TW for each customer
	sum{ p in CUSTTIMEWINDOWS[i]}Served[i,p]=1;

subject to vehicleassign{i in NODE, k in VEHICLES }:				#18 ensure that customer i is served by vehicle k only if it's used
	VehUsed[k] >= CustAssigne[i,k];

subject to WStart_Time {k in VEHICLES}:						#7 start waiting time is 0
	WTime [start,k] = 0;

################################################################################

subject to VisitedNode {i in CUSTOMER, k in VEHICLES}:
	Visit[i,k] = sum {(i,j) in ARC} X[i,j,k];

subject to TotalDemand {k in VEHICLES}:						# total demand on route
	TDemand[k] = sum {i in CUSTOMER}Visit[i,k]*demand[i];

subject to VehicleRouteDuration {k in VEHICLES}:				# total route travel time
	RouteDuration[k] = sum {(i,j) in ARC} travel_time [i,j] * X[i,j,k];


################################################################################

subject to DemandSatisfaction {k in VEHICLES}:					##7
	(sum {(i,j) in ARC} (Flow[j,k] - Flow[i,k]))
	= TDemand[k];

subject to RoutLoading {i in CUSTOMER, k in VEHICLES}:				##8 satisfaction of the demand of each customers on arc
	(sum {(i,j) in ARC} (Flow[j,k] - Flow[i,k]))
	>= demand[i]*CustAssigne[i,k];
