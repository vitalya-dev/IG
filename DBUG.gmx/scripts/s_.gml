var O = argument0

if (O == OPunto) {
    var x1 = argument1
    var y1 = argument2
    for (var i = 0; i < instance_number(OPunto); i++) {
        var punto = instance_find(OPunto, i);
        if (floor(punto.x) == x1 && floor(punto.y) == y1)
            return punto
    }
    return noone
}

if (O == OSegment) {
    var a = argument1
    var b = argument2
    
    if (a == noone || b == noone)
        return noone
    
    for (var i = 0; i < instance_number(OSegment); i++) {
        var segment = instance_find(OSegment, i);
        if (is_endpoint(a, segment) && is_endpoint(b, segment))
            return segment
    }
    
    return noone
}


