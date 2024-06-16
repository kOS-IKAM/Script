//Kerbal Location Beacon

clearscreen.

set refresh_rate to 0.2.


print "Kerbal Location Beacon - Geolocalization System".
print "Made by IKAM - Intelligent Kerbal Automatic Machines".

until 0 {

set long to ship:geoposition:lng.
set lati to ship:geoposition:lat.

wait refresh_rate.

print "Current Coordinates GPS: " at(0,7).
print "Latitude: " + ceiling(lati,5) at(0,9). 
print "Longitude: " + ceiling(long,5) at (0,10).

print "KLB Running at refresh rate of :" + refresh_rate + " hz" at(0,13).

}

