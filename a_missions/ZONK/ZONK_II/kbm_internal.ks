// Boot

clearscreen.
print "Running: KBM Internal".
print "Provided by IKAM - 2024".

WAIT 0.1.
PRINT ".".
WAIT 0.1.
PRINT "..".
WAIT 0.1.
PRINT "...".
CLEARSCREEN.

PRINT " ".
wait 1.
PRINT "Copying from mainframe to local".
wait 1.

//----| aggiornare qui il file di configurazione    |-----

COPYPATH("0:/a_missions/ZONK/ZONK_II/a_configs", "1:/os/a_configs").
COPYPATH("0:/os/ULP", "1:/os/ULP").

PRINT "Switch to Local".
SWITCH TO 1.
WAIT 0.1.
PRINT ".".
WAIT 0.1.
PRINT "..".
WAIT 0.1.
PRINT "...".
WAIT 0.1.
PRINT "Ready".
wait 1.

//Qui si starta semplicemente il sistema operativo (interfaccia)
//Si sceglie poi come far partire ULP

cd().
cd(os).
cd(ULP).

run ulp_launch.