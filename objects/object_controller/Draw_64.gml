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