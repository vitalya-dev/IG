///draw_arc(x, y, r, start_angle, end_angle, colour, thickness)

var xx = argument0
var yy = argument1
var r = argument2
var start_angle = argument3
var end_angle = argument4
var colour = argument5
var thickness = argument6


draw_primitive_begin(pr_trianglestrip)
//draw_vertex_colour(xx, yy, colour, 1)
for (var i = start_angle; i <= end_angle; i += 1) {
    draw_vertex_colour(xx+r*cos(degtorad(i)), yy-r*sin(degtorad(i)), colour, 1);
    draw_vertex_colour(xx+(r+thickness)*cos(degtorad(i)), yy-(r+thickness)*sin(degtorad(i)), colour, 1);
}
draw_primitive_end()
