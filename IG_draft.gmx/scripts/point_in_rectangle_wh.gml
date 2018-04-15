///point_in_rectangle_wh(px, py, x, y, w, h)

/*
    Return true if point in rectangle
*/


var px = argument0;
var py = argument1;
var xx = argument2;
var yy = argument3;
var w = argument4;
var h = argument5;

return point_in_rectangle(px, py, xx, yy, xx + w, yy + h)
