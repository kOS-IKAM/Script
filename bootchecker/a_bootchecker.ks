clearscreen.
print "Running main bootchecker".
WAIT 0.1.
PRINT ".".
WAIT 0.1.
PRINT "..".
WAIT 0.1.
PRINT "...".

declare function mycd {
    cd().
    cd(bootchecker).
}

CLEARSCREEN.

//START
if ship:name = "start" {
    print "start of bootchecker".
    WAIT 0.1.
    PRINT ".".
    WAIT 0.1.
    PRINT "..".
    WAIT 0.1.
    PRINT "...".
}


//DB_insert_programs_here

else if ship:name:contains("ZONK") {
    cd().
    cd(a_missions).
    cd(ZONK).
    cd(a_zonk_bootchecker).
    run zonk_bootchecker.
}



//END
else { 
print "final else".
}

print "end of bookchecker".