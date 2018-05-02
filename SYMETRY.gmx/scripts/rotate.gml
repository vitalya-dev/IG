var o = argument0

if (o == OSegment) {
    var s = argument1
    var d = argument2
    
    var l = segment_length(s)
    var u_d = Vector(d[X] / vector_length(d), d[Y] / vector_length(d));
    
    s.b.x = s.a.x + u_d[X] * l
    s.b.y = s.a.y + u_d[Y] * l
}
