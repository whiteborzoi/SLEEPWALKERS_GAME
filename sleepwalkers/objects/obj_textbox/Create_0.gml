sprite_index = global.textbox_sprite;
x = global.textbox_x;
y = global.textbox_y;
draw_set_font(global.font_text);

text_current = "";
letters = 0;
line = 0;
if global.textbox_saveline > 0{
	line = global.textbox_saveline
	global.textbox_saveline = 0
}
text[0] = "Debug Message 1";
name_id = "Debug Name";
max_lines = 0;
icon_index = 0;
icon_index_max = sprite_get_number(global.textbox_icon);
icon_index_speed = (sprite_get_speed(global.textbox_icon) / room_speed);
saved_text[0] = "Debug Message";

font_color_top = c_white;
font_color_bottom = c_ltgray;
font = global.font_text;
text_size = 1;
name_color_top = c_white;
name_color_bottom = c_ltgray;
name_font = global.font_text;
name_size = 1
speech = noone;
sound_current = noone;
pause_frames = 0;
pause_last = 0;
letter_current = "";
letter_last = "";
letter_i = 0;
str_ww = 0;
line_last = 0;

waving_char = array_create(global.max_chars);
shaking_char = array_create(global.max_chars);
color_change_char = array_create(global.max_chars);
color_char_top = array_create(global.max_chars);
color_char_bot = array_create(global.max_chars);
font_char = array_create(global.max_chars);
outline_col = array_create(global.max_chars);
pause_dur = array_create(global.max_chars);

for (var i = 0; i < global.max_chars; ++i) {
	outline_col[i] = -1 // sets the default to -1, since c_black == 0
}

end_event = true;

init = false

//init
alarm[1] = 1;

