var c = argument0
var ab = argument1

var s = Vector(ab.a.x - ab.b.x, ab.a.y - ab.b.y)
var u_s = Vector(s[X] / vector_length(s), s[Y] / vector_length(s))

if (u_s[X] != 0) {
    var i = c[X] / u_s[X]
    if (i * u_s[Y] == c[Y])
        return true
}

if (u_s[Y] != 0) {
    var i = c[Y] / u_s[Y]
    if (i * u_s[X] == C[X])
        return true     
}

return false
return ab.a == c || ab.b == c
