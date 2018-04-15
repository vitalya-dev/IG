var ab = argument0
var ac = argument1
var bc = argument2

if (segment_length(ac) == segment_length(bc))
    return true
else if (segment_length(bc) == segment_length(ab))
    return true
else if (segment_length(ab) == segment_length(ac))
    return true
else
    return false

