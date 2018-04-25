var o = argument0
var x1 = argument1
var y1 = argument2

if (o == OCircle) {
    var circle_to_hide = noone;
    for (var i = 0; i < instance_number(OCircle); i++) {
        var candidate = instance_find(OCircle, i)
        if (candidate.visible && euclidean_distance(candidate.x, candidate.y, x1, y1) < candidate.r) {  
            if (circle_to_hide == noone)
                circle_to_hide = candidate;
            else if (candidate.r <= circle_to_hide.r)
                circle_to_hide = candidate
        }
    }
    return circle_to_hide 
}

return noone
