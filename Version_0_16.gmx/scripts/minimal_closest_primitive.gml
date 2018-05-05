var primitive = argument0
var x1 = argument1
var y1 = argument2

if (primitive == OCircle) {
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
} else if (primitive == OPunto) {
    var closest_punto = noone
    for (var i = 0; i < instance_number(OPunto); i++) {
        var candidate = instance_find(OPunto, i)
        var d1 = euclidean_distance(candidate.x, candidate.y, x1, y1)
        if (candidate.visible && d1 < candidate.size * 2) {
            if (closest_punto == noone)
                closest_punto = candidate;
            else if (d1 < euclidean_distance(closest_punto.x, closest_punto.y, x1, y1))
                closest_punto = candidate
        }
    }
    return closest_punto
}

return noone
