set counter_a to 0.
set counter_b to 0.

set status to 0.
set result to 0.

on agx101 { //numero 1 del tastierino

    if status = 0 { 
        set 1 to counter_a.
        set status to 1.
    }

    else { set 1 to counter_b. }
}



on agx150 { //enter
    set result to (counter_a + counter_b*10)
    
    if result = 10 {
        run program.
    }
}



