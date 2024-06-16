declare function mycd {
    cd().
    cd(bootchecker).
}

CLEARSCREEN.

//START
if ship:name = "start" {
    print "start of bootchecker".
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