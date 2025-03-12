/// @description Set size
draw_set_font(global.font_options)
var ww = 1
var hh = 1
ww = string_width(global.menu_options[idd])
hh = string_height(global.menu_options[idd])

image_xscale = ww/sprite_get_width(sprite_index)
image_yscale = hh/sprite_get_height(sprite_index)
