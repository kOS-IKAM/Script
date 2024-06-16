// choose what directory to copy --- MODIFICARE QUI!

declare function my_copy {
    COPYPATH("0:/ZONK_III", "1:/ZONK_III").
    COPYPATH("0:/CONN", "1:/CONN").
}

// set names --- MODIFICARE QUI!


declare function my_run {
    cd().
    wait 0.1.
    cd(ZONK_III).
    wait 0.1.
    cd(ULP).
    wait 0.1.
    run zonk_iii_launch.
}


// -- FINE PARTE DA MODIFICARE






// AVVIO

CLEARSCREEN.

WAIT 1.
PRINT ".".
WAIT 0.5.
PRINT "..".
PRINT "...".
CLEARSCREEN.

// PRINT DEL SISTEMA OPERATIVO, CUSTOMIZZABILE - SOLO COSMETIC

PRINT "KOS Operating System Online: ZONK Probe Firmware V-1.0".
PRINT " ".
PRINT "BOOTING SEQUENCE HAS STARTED".
WAIT 2.
PRINT " ".
PRINT "COPYING FROM MAINFRAME TO LOCAL".
WAIT 2.

// COPIA CARTELLE, SWITCHA A 1, LANCIA SEQUENZA                                          

my_copy.

PRINT "SWITCH TO LOCAL".
SWITCH TO 1.
WAIT 3.
PRINT "READY TO INITIATE LAUNCH SEQUENCE".

my_run.
