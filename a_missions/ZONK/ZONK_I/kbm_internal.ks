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

// COSA COPIARE - questa roba qui andrà cambiata in una lista di programmi e di config files
// esempio:
// COPYPATH("0:/os/DPR", "1:/os/DPR"). per ogni file
// Dentro a_missions ci saranno i configs da copiare
// COPYPATH("0:/a_missions/ZONK/ZONK_I/configs", "1:/configs"). per ogni file

COPYPATH("0:/a_missions/ZONK/ZONK_I/a_configs", "1:").

//createdir(os).
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