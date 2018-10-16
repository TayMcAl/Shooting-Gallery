/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2530E2F5
/// @DnDArgument : "xpos" "irandom(724)+100"
/// @DnDArgument : "ypos" "595"
/// @DnDArgument : "objectid" "object_duck"
/// @DnDSaveInfo : "objectid" "4ea0c3ea-1e55-4ab0-b872-67d2d9461673"
instance_create_layer(irandom(724)+100, 595, "Instances", object_duck);

/// @DnDAction : YoYo Games.Timelines.Speed_Timeline
/// @DnDVersion : 1
/// @DnDHash : 4CDDC978
/// @DnDArgument : "speed" "0.1"
/// @DnDArgument : "speed_relative" "1"
timeline_speed += 0.1;