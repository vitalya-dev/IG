var a = argument0
var b = argument1
var c = argument2

////////////////////////
if (!is_polygon(a, b, c))
    return false
////////////////////////
if (segment_length(b) == segment_length(c))
    return true;
if (segment_length(c) == segment_length(a))
    return true;
if (segment_length(a) == segment_length(b))
    return true;
//////////////////////////
return false
