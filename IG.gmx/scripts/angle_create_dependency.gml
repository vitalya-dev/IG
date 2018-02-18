///angle_create_dependency()

var selected_points = get_selected_points()
var selected_segments = get_selected_segments()

if (array_length_1d(selected_points) == 1 && array_length_1d(selected_segments) == 1) {
    var point = selected_points[0];
    var segment = selected_segments[0];
    
    if (segment.starte == point || segment.ende == point)
        global.dependency_func_ret = true
    else
        global.dependency_func_ret = false
        
} else {
    global.dependency_func_ret = false
}
