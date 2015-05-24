# Model VRPwTW

# SETS

set NODE;									# set of nodes (i,j)
param L > 0;									# =1 for start of the TW, =2 for end of the TW for all customer i
set ARC := {(i,j) in (NODE cross NODE):i<>j};					# set of arcs
set CUSTOMER := {i in NODE: i<>"MoscowDepot"};					# set of customers
set VEHICLES;									# set of vehicles
set TIMEWINDOWS {i in CUSTOMER, l in 1..L};					# set of start TW and end TW for every customer i
set CUSTTIMEWINDOWS {i in NODE};						# numb of TW per route for every customer i

# PARAMETRS

param timewind{i in NODE, l in 1..L, p in CUSTTIMEWINDOWS[i]};			# every start/end TW for every customer in every day per route
param demand {NODE} >= 0;							# demand at node i
param capacity {VEHICLES} >= 0; 						# vehicle capacity
param travel_distance {ARC} >= 0;						# travel distance between nodes i and j
param fix_cost {k in VEHICLES} = 1;						# vehicle using cost
param travel_cost >= 0;								# cost of moving vehicle per hour
param waiting_cost >= 0;							# cost of waiting vehicle per hour
param working_limit >= 0;							# max number of hours driver can drive/work per day

# TIME

param travel_time {ARC} >= 0; 							# travel time between nodes i and j
param service_available {i in NODE, p in 1..13};				# start of serving period at node i
param service_time {NODE} >= 0; 						# service time at node i
param M = 10000;								# large constrant
param maxduration {VEHICLES};							# max route duration

# VARIABLES

var X {ARC,VEHICLES} binary; 							# 1 if ark i,j is used by vehicle k
var VehUsed {k in VEHICLES} binary;						# 1 if  vehicle k is used
var CustAssigne {i in NODE, k in VEHICLES} binary;				# 1 if customer i in assigned to vehicle k
var Served {i in NODE, p in CUSTTIMEWINDOWS[i]} binary;				# 1 if customer i is served within time window p
var ATime {i in NODE, k in VEHICLES} >=0;					# arrival time for vehicle k at node i
var DTime {i in NODE, k in VEHICLES} >=0;					# departure time for vehicle k at node i
var RouteDuration {VEHICLES} >=0;						# route duration of vehicle k
var WTime {i in NODE, k in VEHICLES} >=0;					# waiting time of vehicle k at customer i


# MODEL

minimize Total_Cost:
	sum {k in VEHICLES, (i,j) in ARC} travel_time [i,j] * X[i,j,k] * travel_cost +    	# total travel time
	sum {k in VEHICLES, i in NODE} WTime [i,k] * waiting_cost +				# total waiting time
	sum {k in VEHICLES} fix_cost [k] * VehUsed [k];						# total vehicle cost

# CONSTRAINTS

subject to Custimer_Vehicle_Balance {i in NODE}:						#(1) one vehicle for customer i
	sum {k in VEHICLES} CustAssigne[i,k] = 1;

subject to ARC_Vehicle_Balance1 {j in NODE}:							#(2) one vehicle for arc i,j
	sum {(i,j) in ARC, k in VEHICLES} X [i,j,k]= 1;

subject to Input_Output_Balance2 {i in NODE, k in VEHICLES}:					#5 if one vehicle come to node - one income
	sum {(i,j) in ARC:i<>j} X[i,j,k] = sum {(j,i) in ARC:i<>j} X[j,i,k];

subject to Traverse {k in VEHICLES, (i,j) in ARC}:						##3 any ARC (i,j) can be traversed by vehicle k if both CustAssigne = 1
	2 * X [i,j,k] <= CustAssigne [i,k] + CustAssigne [j,k];

subject to CustVisit {i in CUSTOMER}:						        	##4 every customer i visited by 1 vehicle
	sum {k in VEHICLES, (i,j) in ARC:i<>j} X[i,j,k] <=1;

subject to Loading {k in VEHICLES}:								#6 capacity should not be exeed
	sum {i in CUSTOMER, (i,j) in ARC} demand[i] * X[i,j,k] <= capacity[k];

subject to BetweenStartEnd {k in VEHICLES}:							##11 duration of each route should not exceed max route duration
	ATime["MoscowDepot",k]-DTime["MoscowDepot",k] <= maxduration[k] +
	M*(1 -CustAssigne["MoscowDepot",k]);

subject to DepartureTime {i in CUSTOMER, k in VEHICLES}:					##12 departure time >= arrival time + service_time
	DTime[i,k] >= ATime[i,k]+WTime[i,k] + service_time[i] -
	M*(1-CustAssigne[i,k]);

subject to DepartureTime1 {i in CUSTOMER, k in VEHICLES}:
	DTime[i,k] <= ATime[i,k] + WTime[i,k] + service_time[i] + M*(1-CustAssigne[i,k]); 	#12.5 - Combined 12 and 12.5 enforce leaving of vehicle right after
												#service is done. IMPORTANT.

subject to ArrivalTime {(i,j) in ARC, k in VEHICLES}:						##13 arrival t at customer j = departure t from customer i +
	ATime [j,k] >= DTime[i,k] + travel_time[i,j] -						## + travel time from i to j only if arc assigned to vehicle k
	M*(1-X[i,j,k]);

subject to ArrivalTime1 {(i,j) in ARC, k in VEHICLES}:						##14 same with 13
	ATime [j,k] <= DTime[i,k] + travel_time[i,j] +
	M*(1-X[i,j,k]);

subject to STW {i in NODE, k in VEHICLES, p in 1..13}:						##15 arrival time + waiting time >= start TW, only if
	ATime[i,k] + WTime [i,k] >= timewind[i,1,p] -						# customer i is assigned to vehicle k and TW p is chosen
	M*(1-CustAssigne[i,k]) - M*(1-Served[i,p]) ;

subject to ETW {i in NODE, k in VEHICLES, p in CUSTTIMEWINDOWS[i]}:				##16 arrival time + waiting time <= end TW, only if
	ATime[i,k] + WTime [i,k]+service_time[i] <= timewind[i,2,p] +				# customer i is assigned to vehicle k and TW p is chosen
	M*(1-CustAssigne[i,k]) + M*(1-Served[i,p]);

subject to visit2 {i in CUSTOMER}:								##17 one TW for each customer
	sum{ p in CUSTTIMEWINDOWS[i], k in VEHICLES}Served[i,p]*CustAssigne[i,k]=1;

	subject to visit{k in VEHICLES}:							##17 one TW for each customer
	sum{ p in 1..13}Served["MoscowDepot",p]*CustAssigne["MoscowDepot",k]<=2;


subject to Serve_when_available {i in NODE, p in 1..13}:
	Served[i,p]<=service_available [i,p];


#subject to I_whip_my_slaves_back_and_forth {p in 1..13, k in VEHICLES}:			#Ensure that sum of travel and service time on any day is less than working limit of a driver
	#sum {i in CUSTOMER} (service_time[i]*Served[i,p])
	#+ sum {(i,j) in ARC} (X[i,j,k]*Served[i,p]*travel_time[i,j])
	#<= working_limit;


subject to vehicleassign{i in NODE, k in VEHICLES }:						##18 ensure that customer i is served by vehicle k only if it's used
	VehUsed[k] >= CustAssigne[i,k];

subject to WStart_Time {k in VEHICLES}:								#19 start waiting time is 0
	WTime ["MoscowDepot",k] = 0;

#subject to DepartureTimefromDepot{k in VEHICLES}:						#20 departure time from depot is 0
	#DTime ["MoscowDepot",k] = 0;

################################################################################


subject to VehicleRouteDuration {k in VEHICLES}:						# total route travel time
	RouteDuration[k] = sum {(i,j) in ARC} travel_time [i,j] * X[i,j,k];


################################################################################
