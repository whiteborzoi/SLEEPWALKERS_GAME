//darken background for options, since a parent option object dosen't exist
draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(-(global.screen_buff+1),-(global.screen_buff+1),global.game_width+global.screen_buff,global.game_height+global.screen_buff,false)
draw_set_alpha(1)

//draw 
draw_self()
draw_set_alpha(image_alpha)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(global.font_options)
draw_text_outline(x+48,y,"Во всеь экран (F11)",1,1,c_white,c_black)
draw_set_alpha(1)
