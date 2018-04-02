//////////////////////////////////////////////
var edges = ds_insieme_create()
for (var i = 0; i < argument_count; i++)
    ds_insieme_add(edges, argument[i])    

var vertex = ds_insieme_create()
for (var i = 0; i < ds_insieme_size(edges); i++) {
    ds_insieme_add(vertex, edges[| i].a)
    ds_insieme_add(vertex, edges[| i].b)   
}

var answer = ds_insieme_size(vertex) == ds_insieme_size(edges) // In polygon number of edges eq number of vertex

///////////////////////////////////////////////
ds_insieme_destroy(edges)
ds_insieme_destroy(vertex)
///////////////////////////////////////////////

return answer
