///__get_selected(obj)

var obj = argument0;
var selected_objects = array_create(0);

var i = 0;
with (obj) {
    if (selected)
        selected_objects[i++] = self
}

return selected_objects;

