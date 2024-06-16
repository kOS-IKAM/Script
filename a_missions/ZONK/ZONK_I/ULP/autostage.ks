declare function autostage {
    if autostage_status = true {
        when maxthrust = 0 then {
        stage.
        preserve.
        }
    }
}