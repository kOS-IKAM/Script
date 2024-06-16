CLEARSCREEN. 

declare function bootprint {
    PRINT " ".
    PRINT "-ER7500 KOS COMPUTER-".
    PRINT " ".
    PRINT "Intelligent Kerbal Automatic Machines".
    PRINT "".
    PRINT " ".
    PRINT " ".
}

IF SHIP:STATUS = "PRELAUNCH" {


    bootprint.
    PRINT "STATUS DETECTED: " + SHIP:STATUS.
    PRINT "LOAD BOOT SEQUENCE TO START: PRESS KEYCODE 9".
    WAIT UNTIL AG201.
    PRINT "LOADING.".
    WAIT 0.2.
    PRINT ".".
    CLEARSCREEN.
    PRINT "..".
    WAIT 0.5.
    PRINT "...".
    WAIT 0.3.
    PRINT "Kerbal Operating System (KOS) is active and running".
    PRINT ".....".
    WAIT 0.3.
    PRINT ".......... ".
    PRINT "Loading Dependencies from Kernel".
    WAIT 0.4.
    PRINT ".............".
    WAIT 0.5.
    PRINT ".................... ".
    WAIT 1.
    PRINT "Switching to Mainframe Volume 0".
    WAIT 1.
    SWITCH TO 0.
    CLEARSCREEN.
    print "running bootchecker".
    wait 0.3.
    print "...".
    wait 0.3.
    print "......".
    print "............".
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


