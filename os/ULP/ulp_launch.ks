// ULP - Launch

clearscreen.

// Welcome Screen

print "Running: ULP - Useless Launch Program".
print "Sub-Program STATUS: Launch".
print " ".
print "Author: IKAM - 2024".

WAIT 2.

PRINT "Launch sequence has started".
PRINT "All system has started".


AG103 ON.                       //SIREN AG103
WAIT 4.

PRINT "Rofi Ignition". 
AG101 ON.                       //ROFI AG101         
WAIT 4.

PRINT "Main Engine Ignition ".
LOCK THROTTLE TO 1.
STAGE.                          //STAGE IGNITION
WAIT 3.

PRINT "Clamp Release ".
AG102 ON.                       //CLAMP AG 102

//LAUNCH

STAGE.                           // STAGE LAUNCH

PRINT "Liftoff Confirmed!".
PRINT "Calling Liftoff Program in 3 seconds.".
wait 3.

//END
run ulp_lift.






