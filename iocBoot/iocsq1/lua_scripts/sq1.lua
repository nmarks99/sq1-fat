mode = {
    "Move",
    "Cancel",
    "Pause",
    "Resume",
    "Home",
    "Initialize",
    "Cap",
    "Cap Release",
    "Cap Cartesian",
}

-- Returns a string in the above table
-- at index "A" which is the value of the
-- $(P)Command mbbo enum record
function get_command_string()
    i = (A + 1) // 1
    return mode[i]
end
