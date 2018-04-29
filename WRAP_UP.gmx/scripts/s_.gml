var o = argument0

if (o == OPunto) {
    var x1 = floor(argument1)
    var y1 = floor(argument2)
    for (var i = 0; i < instance_number(OPunto); i++) {
        var p = instance_find(OPunto, i)
        if (floor(p.x) == x1 && floor(p.y) == y1)
            return p
    }
    return noone
}


if (o == OSegment) {
    var a = argument1
    var b = argument2
    
    if (a != noone && b != noone) {
        for (var i = 0; i < instance_number(OSegment); i++) {
            var s = instance_find(OSegment, i)
            var a_on = is_on(Point(a.x, a.y), Segment(s.a.x, s.a.y, s.b.x, s.b.y))  
            var b_on = is_on(Point(b.x, b.y), Segment(s.a.x, s.a.y, s.b.x, s.b.y))
            if (a_on && b_on && OSegment.active_one != s) // a lies on s and b lies on s
                return s
        }
    }
    return noone
}

if (o == OCircle) {
    var a = argument1
    var b = argument2
    var r1 = euclidean_distance(a.x, a.y, b.x, b.y);
    if (a != noone && b != noone) {
        for (var i = 0; i < instance_number(OCircle); i++) {
            var s = instance_find(OCircle, i) 
            if (s.c == a && floor(s.r) == floor(r1) && OCircle.active_one != s)
                return s
        }
    }
}

return noone
