var o = argument0
var x1 = argument1
var y1 = argument2

if (o == OCircle) {
    var closest_circle = noone;
    for (var i = 0; i < instance_number(OCircle); i++) {
        var candidate = instance_find(OCircle, i)
        if (candidate.visible && euclidean_distance(candidate.x, candidate.y, x1, y1) < candidate.r) {  
            if (closest_circle == noone)
                closest_circle = candidate;
            else if (candidate.r <= closest_circle.r)
                closest_circle = candidate
        }
    }
    return closest_circle 
}

return noone
