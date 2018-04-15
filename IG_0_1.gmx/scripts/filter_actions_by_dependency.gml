/// filter_actions_by_dependency(action_list)

var action_list = argument0;
var filtered_action_list = ds_list_create();

for (var i = 0; i < ds_list_size(action_list); i++) {
    var action = ds_list_find_value(action_list, i);
    var action_dependency = asset_get_index(action[? "dependency"]);
    script_execute(action_dependency)
    if (global.dependency_func_ret == true)
        ds_list_add(filtered_action_list, action);
}

return filtered_action_list 

