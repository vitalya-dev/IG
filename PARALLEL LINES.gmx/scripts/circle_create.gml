var x1 = argument0
var y1 = argument1

////////////////////////////////////////////////////////////////////
var center = noone;
var punto_nearby = instance_nearby(x1, y1, OPunto, self)
if (punto_nearby == noone) {
    center = instance_create(x1, y1, OPunto)
} else {
    center = punto_nearby
}
////////////////////////////////////////////////////////////////////

var circle = instance_create(center.x, center.y, OCircle);
circle.c = center
return circle
