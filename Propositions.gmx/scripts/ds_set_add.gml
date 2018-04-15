var s_id = argument0
var val = argument1

if (ds_list_find_index(s_id, val) == -1)
    ds_list_add(s_id, val)

