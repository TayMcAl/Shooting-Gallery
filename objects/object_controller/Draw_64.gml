/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 29305D59
/// @DnDArgument : "color" "$FF0000B7"
draw_set_colour($FF0000B7 & $ffffff);
draw_set_alpha(($FF0000B7 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1E756862
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "f23a0318-fb1f-444a-be14-7dfd01372a47"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 420F1C55
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "10"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(50, 10, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 182694D1
/// @DnDArgument : "x" "250"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "sprite" "sprite_ammo"
/// @DnDSaveInfo : "sprite" "51e46119-3031-4c28-a795-383010f7a978"
var l182694D1_0 = sprite_get_width(sprite_ammo);
var l182694D1_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l182694D1_2 = __dnd_lives; l182694D1_2 > 0; --l182694D1_2) {
	draw_sprite(sprite_ammo, 0, 250 + l182694D1_1, 20);
	l182694D1_1 += l182694D1_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4EC5A601
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" ""Strikes: ""
/// @DnDArgument : "var" "strike"
draw_text(50, 50, string("Strikes: ") + string(strike));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20257C92
/// @DnDArgument : "var" "strike"
if(strike == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0989DFBB
	/// @DnDApplyTo : 3ead1578-ceed-48e6-9cee-b04ffbe3dd0d
	/// @DnDParent : 20257C92
	with(object_hole) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D6A423B
	/// @DnDApplyTo : e8ca0032-678f-40ac-8cbe-f919711e1c46
	/// @DnDParent : 20257C92
	with(object_crosshair) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27CE40E4
	/// @DnDApplyTo : 4ea0c3ea-1e55-4ab0-b872-67d2d9461673
	/// @DnDParent : 20257C92
	with(object_duck) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B74A6CB
	/// @DnDApplyTo : b2064aa2-f544-4d51-85d4-57507490121c
	/// @DnDParent : 20257C92
	with(object_ammobox) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0EB88E2C
	/// @DnDApplyTo : 5d06a362-7f6c-4b47-9ff0-04a17550b73e
	/// @DnDParent : 20257C92
	with(object_duck_target) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75882257
	/// @DnDApplyTo : e29eaa03-6f05-48d4-95f6-3d9ff60b5528
	/// @DnDParent : 20257C92
	with(object_target) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D168B7A
	/// @DnDParent : 20257C92
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "300"
	/// @DnDArgument : "objectid" "object_end"
	/// @DnDSaveInfo : "objectid" "48147723-9ad5-4527-83a7-ec2976a4e14f"
	instance_create_layer(350, 300, "Instances", object_end);

	/// @DnDAction : YoYo Games.Timelines.Set_Timeline_State
	/// @DnDVersion : 1
	/// @DnDHash : 253DFD2A
	/// @DnDParent : 20257C92
	/// @DnDArgument : "state" "3"
	timeline_running = false;
	timeline_position = 0;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 0FD01979
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 586978BE
	/// @DnDApplyTo : 3ead1578-ceed-48e6-9cee-b04ffbe3dd0d
	/// @DnDParent : 0FD01979
	with(object_hole) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03741A4C
	/// @DnDApplyTo : e8ca0032-678f-40ac-8cbe-f919711e1c46
	/// @DnDParent : 0FD01979
	with(object_crosshair) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 718DC451
	/// @DnDApplyTo : 4ea0c3ea-1e55-4ab0-b872-67d2d9461673
	/// @DnDParent : 0FD01979
	with(object_duck) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71B4FE56
	/// @DnDApplyTo : b2064aa2-f544-4d51-85d4-57507490121c
	/// @DnDParent : 0FD01979
	with(object_ammobox) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 569FF5D6
	/// @DnDApplyTo : 5d06a362-7f6c-4b47-9ff0-04a17550b73e
	/// @DnDParent : 0FD01979
	with(object_duck_target) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 01C09267
	/// @DnDApplyTo : e29eaa03-6f05-48d4-95f6-3d9ff60b5528
	/// @DnDParent : 0FD01979
	with(object_target) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 170E8856
	/// @DnDParent : 0FD01979
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "300"
	/// @DnDArgument : "objectid" "object_end"
	/// @DnDSaveInfo : "objectid" "48147723-9ad5-4527-83a7-ec2976a4e14f"
	instance_create_layer(350, 300, "Instances", object_end);

	/// @DnDAction : YoYo Games.Timelines.Set_Timeline_State
	/// @DnDVersion : 1
	/// @DnDHash : 5CF0D154
	/// @DnDParent : 0FD01979
	/// @DnDArgument : "state" "3"
	timeline_running = false;
	timeline_position = 0;
}