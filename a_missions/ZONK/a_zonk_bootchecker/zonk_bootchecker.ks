clearscreen.
print "Running local bootchecker".
wait 1.

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
    run kbm_internal.
}
else if ship:name = "ZONK-II" {
    cd("0:/a_missions/ZONK/ZONK_II").
    run kbm_internal.
}
else if ship:name = "ZONK-III" {
    cd("0:/a_missions/ZONK/ZONK_III").
    run kbm_internal.
}
else if ship:name = "ZONK-IV" {
    cd("0:/a_missions/ZONK/ZONK_IV").
    run kbm_internal.
}
else if ship:name = "ZONK-V" {
    cd("0:/a_missions/ZONK/ZONK_V").
    run kbm_internal.
}
else if ship:name = "ZONK-VI" {
    cd("0:/a_missions/ZONK/ZONK_VI").
    run kbm_internal.
}
else if ship:name = "ZONK-VII" {
    cd("0:/a_missions/ZONK/ZONK_VII").
    run kbm_internal.
}
else if ship:name = "ZONK-VIII" {
    cd("0:/a_missions/ZONK/ZONK_VIII").
    run kbm_internal.
}
else if ship:name = "ZONK-IX" {
    cd("0:/a_missions/ZONK/ZONK_IX").
    run kbm_internal.
}
else if ship:name = "ZONK-X" {
    cd("0:/a_missions/ZONK/ZONK_X").
    run kbm_internal.
}

//END
else { 
print "WARNING!".
print "No entry present in DB".
}
