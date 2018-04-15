var s1 = argument0
var s2 = argument1

if (s1.a == s2.a || s1.a == s2.b)
    return true
else if (s1.b == s2.a || s1.b == s2.b)
    return true
else
    return false
