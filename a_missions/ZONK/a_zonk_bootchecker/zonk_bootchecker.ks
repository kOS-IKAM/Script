declare function mycd {
    cd().
    cd(a_missions).
    cd(ZONK).
}

CLEARSCREEN.

//START
if ship:name = "start" {
    print "start of bootchecker".
}


//DB

else if ship:name = "ZONK-I" {
    cd("0:/a_missions/ZONK/ZONK_I").
    run zonk_i_boot.
}

else if ship:name = "ZONK-II" {
    mycd.
    run zonk_ii_boot.
}

else if ship:name = "ZONK-III" {
    mycd.
    run zonk_iii_boot.
}

else if ship:name = "ZONK-IV" {
    mycd.
    run zonk_iv_boot.
}

else if ship:name = "MERCURY-I" {
    mycd.
    run mercury_i_boot.
}

else if ship:name = "AGENA TARGETING VEHICLE" {
    mycd.
    run agena_boot.
}


//END
else { 
print "final else".
}

print "end of bookchecker".