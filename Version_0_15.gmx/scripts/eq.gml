var a = argument0
var b = argument1

if (a == noone) {
    if (b == noone)
        return true
    else
        return false
} else {
    if (b == noone)
        return false
    else
        return floor(a[X]) == floor(b[X]) && floor(a[Y]) == floor(b[Y])
}
