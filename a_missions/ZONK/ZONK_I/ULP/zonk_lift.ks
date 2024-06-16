clearscreen.
set c_equatorial to 90. 
set c_polar to 0.
set c_custom to 0.

// ---- INTERFACE: CHANGE HERE  ------

//Targets


set asc_ap_tgt to 80000.
set asc_pe_tgt to -400000.

set obt_pe_tgt to 73000.

set compass_degree to c_equatorial.


//  Phase 1 - Lift

set lift_h to 5000.
set incl_degree_1 to 90.

//  Phase 2 - Gravity Turn #1

set incl_degree_2 to 46.

//  Phase 3 - Gravity Turn #2

set incl_degree_flat to 0.

//  Phase 4 - Engine Shutdown 1

set rep_eta to 40.

//  Phase 5 - Repositioning

set rep_thrust to 0.1.
set ap_eta to 30.

//  Phase 6 - Engine Re-Ignite
//  Phase 7 - Engine Shutdown 2
//  Phase 8 - Orbit

// ------ AUTOSTAGE MODE ----

//set autostage_status to true.
//run autostage.

when maxthrust = 0 then {
        stage.
        preserve.
        }

// ---- PROGRAM ------

// ---- Welcome Screen ---

print "Running: ULP - Useless Launch Program".
print "Sub-Program STATUS: Launch".
print " ".
print "Author: IKAM - 2024".


//  Phase 1 - Lift

print "Phase 1 - Lift          " at (1,10).

lock steering to mysteer.
set mysteer to heading(compass_degree,incl_degree_1).
wait 0.1.
wait until ship:altitude > lift_h. 


//  Phase 2 - Gravity Turn #1

print "Phase 2 - Gravity Turn #1          " at (1,10).


set mysteer to heading(compass_degree,90).

wait 0.1.

wait until ship:altitude > lift_h.
set mysteer to heading(compass_degree,incl_degree_2).

//  Phase 3 - Gravity Turn #2

print "Phase 3 - Gravity Turn #2          " at (1,10).

wait 0.01.
wait until ship:apoapsis > asc_ap_tgt.
set mysteer to heading(compass_degree,incl_degree_flat).

wait 0.01.
wait until ship:periapsis > asc_pe_tgt.

//  Phase 4 - Engine Stop

print "Phase 4 - Engine Stop              " at (1,10).


lock throttle to 0.
wait 2.

wait until eta:apoapsis < rep_eta.


//  Phase 5 - Repositioning
print "Phase 5 - Repositioning             " at (1,10).

lock throttle to rep_thrust.

unlock steering.
sas on.
set sas to prograde.

wait until eta:apoapsis < ap_eta.

//  Phase 7 - Engine Re-Ignite

print "Phase 7 - Engine Re-Ignite          " at (1,10).

lock throttle to 1.
wait until periapsis >= obt_pe_tgt.

//  Phase 8 - Orbiting

print "Phase 8 - Orbiting                   " at (1,10).

lock throttle to 0.
set autostage_status to false.

print "Switching to Orbiting program in 10 seconds".
wait 10.


//run next program







