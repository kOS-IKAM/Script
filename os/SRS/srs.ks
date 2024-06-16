//SRS

clearscreen.
set refresh_rate to 0.2.

until 0 {
print "Safest Reentry Sequencer" at (0,1).
print "Made by IKAM - Intelligent Kerbal Automatic Machines" at (0,2).

wait refresh_rate.

//set some vars
set lati to ship:geoposition:lat.
set long to ship:geoposition:lng.
set ksc_lon to -74.55767.

print "Current Coordinates on ground: " at(0,7).
print "-Radar Latitude: " + ceiling(lati,5) at(0,9). 
print "-Radar Longitude: " + ceiling(long,5) at(0,10).

//check if trajectory has impact then proceed

if ADDONS:TR:HASIMPACT {

    //vars from TR
    set imp_long to ADDONS:TR:IMPACTPOS:lng.
    set imp_lati to ADDONS:TR:IMPACTPOS:lat.
    set offset to (ADDONS:TR:IMPACTPOS:lng - ksc_lon).

    PRINT "Predicted Coordinates on Impact: " at (0,12).
    PRINT "-Impact Latitude: " + ceiling(imp_lati,5) at(0,14).
    PRINT "-Impact Longitude: " + ceiling(imp_long,5) at(0,15).
    print "-Offset from KSC: " + ceiling(offset,5) at (0,16).
    } 
    else {
        print "                                                " at (0,12).
        print "                                                " at (0,14).
        print "Impact position is not available                " at(0,15).
        print "                                                " at (0,16).
    }


print "Status: " + ship:status at (0,18).

print "KLB Running at refresh rate of :" + refresh_rate + " hz" at(0,20).

}