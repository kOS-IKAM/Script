CLEARSCREEN.
WAIT 2.
PRINT "LAUNCH SEQUENCE HAS STARTED".
AG103 ON.                       //SIREN AG103
WAIT 1.

WAIT 1.
PRINT "SHIP NAME: " + SHIP:NAME.
WAIT 1.
PRINT "STATUS: " + SHIP:STATUS.
WAIT 1.
PRINT "TIME: " + TIME.

WAIT 1.

PRINT "READY TO LAUNCH".

WAIT 3.

PRINT "ROFI IGNITION". 
AG101 ON.                       //ROFI AG101         
WAIT 5.
PRINT "IGNITION".
LOCK THROTTLE TO 1.
STAGE.                          //STAGE IGNITION
WAIT 3.
PRINT "CLAMP RELASE".
AG102 ON.                       //CLAMP AG 102

//LAUNCH


STAGE.                           // STAGE LAUNCH

PRINT "ENGINE IGNITION CONFIRMED".
PRINT "LIFTOFF CONFIRMED".
PRINT "LAUNCH SEQUENCE ENDED.".
PRINT "SWITCHING TO LIFTOFF PROGRAM".
WAIT 1.

//END
run mercury_i_lift.






