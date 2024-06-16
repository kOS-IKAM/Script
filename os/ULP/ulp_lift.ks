// ULP - lift

clearscreen.

runpath("1:/os/a_configs/ulp_configs.ks").
run autostage.
autostage().
config_file().


// ---- INTERFACE: CHANGE HERE  ------



// ---- PROGRAM ------

// ---- Welcome Screen ---

print "Running: ULP - Useless Launch Program".
print "Sub-Program STATUS: Liftoff".
print " ".
print "Author: IKAM - 2024".

//  Phase 1 - Lift

print "Phase 1 - Lift                       " at (0,10).

lock steering to mysteer.
set mysteer to heading(compass_degree,incl_degree_1).
wait 0.1.
wait until ship:altitude > lift_h. 

//  Phase 2 - Gravity Turn #1

print "Phase 2 - Gravity Turn #1          " at (0,10).


set mysteer to heading(compass_degree,90).
wait 0.1.
wait until ship:altitude > lift_h.
set mysteer to heading(compass_degree,incl_degree_2).
wait until ship:apoapsis > asc_ap_tgt.

//  Phase 3 - Gravity Turn #2

print "Phase 3 - Gravity Turn #2          " at (0,10).

wait 0.01.
set mysteer to heading(compass_degree,incl_degree_flat).
wait 0.01.
wait until ship:periapsis > asc_pe_tgt.

//  Phase 4 - Engine Stop

print "Phase 4 - Engine Stop              " at (0,10).

lock throttle to 0.
wait 2.
wait until eta:apoapsis < rep_eta.

//  Phase 5 - Repositioning

print "Phase 5 - Repositioning             " at (0,10).

lock throttle to 0.1.
set mysteer to heading(compass_degree,incl_degree_burn).
wait until eta:apoapsis < ap_eta.

//  Phase 7 - Engine Re-Ignite

print "Phase 7 - Engine Re-Ignite          " at (0,10).

lock throttle to 1.
wait until periapsis >= obt_pe_tgt.

//  Phase 8 - Orbiting

print "Phase 8 - Orbiting                   " at (0,10).

lock throttle to 0.
print "Switching to Orbiting program in 10 seconds".
wait 10.

run ulp_orbit.






