///get_selected_points()

var selected_points = array_create(0)

var i = 0;
with (o_point) {
    if (selected)
        selected_points[i++] = self
}

return selected_points;

