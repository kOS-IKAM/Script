//ACFEL V.10
//AUTOMATIC CHECK FOR EXPERIMENTAL LIFTOFFS
//pitch_for original link-> https://github.com/KSP-KOS/KSLib/blob/master/library/lib_navball.ks
//Original Script by SpaceCarmelo

SET RESOLUTION TO 1.

CLEARSCREEN.
WAIT 1.
PRINT "ACFEL - AUTOMATIC CHECK FOR EXPERIMENTAL LIFTOFFS".
PRINT " ".
PRINT " ".

//Functions Declaration

log ship:name to "name.csv".

function pisa {

  print("Altitude Parameters: ").
  print "ALT: " + ceiling(ship:altitude).
  print "AP: " + ceiling(apoapsis).
  print "PE: " + ceiling(periapsis).
  print "ETA:AP " + ceiling(eta:apoapsis).
  print "PITCH: " + ceiling(pitch_for).
  print "THR: " + throttle.
  print "STATUS: " + ship:status.
  print "STAGE NUMBER: " + stage:number.

}


function pitch_for {
  parameter ves is ship,thing is "default".
  local pointing is ves:facing:forevector.
  if not thing:istype("string") {
    set pointing to type_to_vector(ves,thing).
  }

  return 90 - vang(ves:up:vector, pointing).
}


function record { 

  clearscreen.

  print "Recording Data at: " + TIME.
  print pisa.
  log ceiling(ship:altitude) to "alt.csv".
  log ceiling(apoapsis) to "ap.csv".
  log ceiling(periapsis) to "pe.csv".
  log ceiling(eta:apoapsis) to "eta_ap.csv".
  log ceiling(pitch_for) to "pitch.csv".
  log throttle to "throttle.csv".
  log stage:number to "stage.csv".
  log ship:status to "status.csv".
  wait 1.
  
}


//PROGRAM

UNTIL 0 { 
  pisa.
  record.
  wait resolution. 
}

