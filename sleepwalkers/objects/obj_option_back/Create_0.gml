event_inherited()
draw_set_font(global.font_options)
var ww = 1
var hh = 1
ww = string_width("Back")
hh = string_height("Back")

image_xscale = ww/sprite_get_width(sprite_index)
image_yscale = hh/sprite_get_height(sprite_index)

image_alpha = 0
