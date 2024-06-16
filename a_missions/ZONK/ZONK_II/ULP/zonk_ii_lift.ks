CLEARSCREEN.
SET TARGET_PE TO 295000.
SET TARGET_AP TO 300000.
LOCK THROTTLE TO 1.

function autostage {

    WAIT UNTIL MAXTHRUST = 0.
    WAIT 0.2.
    PRINT "STAGE ACTIVATED".
    STAGE.  

}


PRINT "LIFTOFF SEQUENCE HAS STARTED".


WAIT 1.

//LIFTOFF

LOCK STEERING TO UP.

// STAGE #3 ------------

PRINT "LIFTING".

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 113. 
UNLOCK STEERING.
LOCK STEERING TO MYSTEER.
SET MYSTEER TO HEADING(90,90).

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 10000.
SET MYSTEER TO HEADING(90,46).

autostage.

//STAGE #4 ----------------


WAIT 0.01.

WAIT UNTIL SHIP:APOAPSIS > TARGET_AP.
SET MYSTEER TO HEADING(90,0).

WAIT 0.01.
WAIT UNTIL SHIP:PERIAPSIS > -400000.

//ENGINE STOP


LOCK THROTTLE TO 0.

PRINT "ENGINE SHUTDOWN".
WAIT 2.

//GRAVITY BURN

WAIT 0.01.
WAIT UNTIL ETA:APOAPSIS < 40.

WAIT 0.01.

LOCK THROTTLE TO 0.2.

SET MYSTEER TO HEADING(90,0).


WAIT UNTIL ETA:APOAPSIS < 30.
LOCK THROTTLE TO 1.



PRINT "ENGINE FIRING".
PRINT "STARTING GRAVITY BURN".

//ORBITING

WAIT 0.01.
autostage.
PRINT "FAIRING EXPLOSION".
PRINT "REPOSITIONING".
LOCK THROTTLE TO 0.2.
WAIT 5.
LOCK THROTTLE TO 0.5.
LOCK THROTTLE TO 1.
WAIT UNTIL PERIAPSIS >= TARGET_PE.
LOCK THROTTLE TO 0.
WAIT 2.
PRINT "ENGINE SHUTDOWN".
WAIT 2.
PRINT STATUS.
PRINT "OPENING PANELS".
PANELS ON.
WAIT 2.
PRINT "OPENING ANTENNA".
AG2 ON.







