var vertex = ds_insieme_create()
for (var i = 0; i < argument_count; i++) {
    ds_insieme_add(vertex, argument[i].a)
    ds_insieme_add(vertex, argument[i].b)    
}
var answer = ds_insieme_size(vertex) == argument_count // In polygon number of edges eq number of vertex 

//////////////////////////////////////////////////////
ds_insieme_destroy(vertex)
//////////////////////////////////////////////////////

return answer 

