//Targets
declare function config_file{

set c_equatorial to 90. 
set c_polar to 0.
set c_custom to 0.

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

set rep_eta to 30.

//  Phase 5 - Repositioning

set ap_eta to 20.

//  Phase 6 - Engine Re-Ignite

set incl_degree_burn to -2.

//  Phase 7 - Engine Shutdown 2
//  Phase 8 - Orbit

// ------ AUTOSTAGE MODE ----

set autostage_status to true.
}