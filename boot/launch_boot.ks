CLEARSCREEN. 

declare function bootprint {
    PRINT " ".
    PRINT "-Kerberos Boot-".
    PRINT " ".
    PRINT "IKAM - 2024".
    PRINT "".
    PRINT " ".
    PRINT " ".
}

IF SHIP:STATUS = "PRELAUNCH" {


    bootprint.
    PRINT "LOAD BOOT SEQUENCE TO START: PRESS KEYCODE 9".
    WAIT UNTIL AG201.
    WAIT 0.1.
    PRINT ".".
    WAIT 0.1.
    PRINT "..".
    WAIT 0.1.
    PRINT "...".
    PRINT "Switching to Mainframe Volume 0".
    WAIT 1.
    SWITCH TO 0.
    CLEARSCREEN.
    print "running bootchecker".
    WAIT 0.1.
    PRINT ".".
    WAIT 0.1.
    PRINT "..".
    WAIT 0.1.
    PRINT "...".
    wait 2.
    cd().
    cd(bootchecker).
    run a_bootchecker.


    
} ELSE {
    bootprint.
    PRINT "STATUS DETECTED: " + SHIP:STATUS.
    PRINT " ".
    PRINT "SPACE PROCEDURES".
}


