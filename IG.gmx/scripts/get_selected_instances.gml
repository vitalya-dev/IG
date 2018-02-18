///get_selected_instances(obj)

var obj = argument0;
var selected_instances = array_create(0)

var i = 0;
with (obj) {
    if (selected)
        selected_instances[i++] = self
}

return selected_instances;
