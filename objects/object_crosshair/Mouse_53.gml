/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 51D75FF8
/// @DnDArgument : "xpos" "mouse_x"
/// @DnDArgument : "ypos" "mouse_y"
/// @DnDArgument : "objectid" "object_hole"
/// @DnDSaveInfo : "objectid" "3ead1578-ceed-48e6-9cee-b04ffbe3dd0d"
instance_create_layer(mouse_x, mouse_y, "Instances", object_hole);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6134E1A1
/// @DnDApplyTo : 4394ace5-1e17-4c47-8654-9e2c011f1b5a
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(object_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}