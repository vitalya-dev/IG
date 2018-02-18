///angle_create(value)

var value = argument0;

var selected_segments = get_selected_segments()
var selected_points = get_selected_points()

if (array_length_1d(selected_points) == 1 && array_length_1d(selected_segments) == 1) {
    var point = selected_points[0];
    var segment = selected_segments[0];
    if (segment.starte == point || segment.ende == point) {
        // Okey. We got what we need. Time to make angle
        if (segment.angle <= 90)
            __angle_create_first_quadrant(value, segment, point);
        else if (segment.angle <= 180)
            __angle_create_second_quadrant(value, segment, point);
        else if (segment.angle <= 270)
            __angle_create_third_quadrant(value, segment, point);
        else if (segment.angle <= 360)
            __angle_create_fourth_quadrant(value, segment, point);
    }
}
    
