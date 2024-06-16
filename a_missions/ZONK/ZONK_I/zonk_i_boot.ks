CLEARSCREEN.

WAIT 1.
PRINT ".".
WAIT 0.5.
PRINT "..".
PRINT "...".
CLEARSCREEN.

PRINT "KOS Operating System Online: ZONK Probe Firmware V-1.0".
PRINT " ".
PRINT "BOOTING SEQUENCE HAS STARTED".
WAIT 2.
PRINT " ".
PRINT "COPYING FROM MAINFRAME TO LOCAL".
WAIT 2.

//COSA COPIARE
COPYPATH("0:/a_missions/ZONK/ZONK_I", "1:/ZONK_I").

PRINT "SWITCH TO LOCAL".
SWITCH TO 1.
WAIT 3.
PRINT "READY TO INITIATE LAUNCH SEQUENCE".
cd(ZONK_I).
cd(ULP).
run zonk_launch.