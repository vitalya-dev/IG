// arguments is edges

var vertex = ds_set_create();
for (var i = 0; i < argument_count; i++) {
    ds_set_add(vertex, argument[i].a);
    ds_set_add(vertex, argument[i].b);
}

// if number of edges = number of vertex then polygon
var result = ds_set_size(vertex) == argument_count
////////////////////////////////////
ds_set_destroy(vertex)
///////////////////////////////////////
return result
