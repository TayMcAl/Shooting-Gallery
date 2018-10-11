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

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 0FD01979
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 170E8856
	/// @DnDParent : 0FD01979
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "300"
	/// @DnDArgument : "objectid" "object_end"
	/// @DnDSaveInfo : "objectid" "48147723-9ad5-4527-83a7-ec2976a4e14f"
	instance_create_layer(350, 300, "Instances", object_end);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 586978BE
	/// @DnDApplyTo : e8ca0032-678f-40ac-8cbe-f919711e1c46
	/// @DnDParent : 0FD01979
	with(object_crosshair) instance_destroy();
}