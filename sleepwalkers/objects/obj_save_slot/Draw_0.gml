draw_set_font(global.font_options)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(image_alpha)

if empty == true{
	//draw empty slot
	draw_set_color(c_dkgray)
	draw_rectangle(x - (sprite_width/2), y - (sprite_height/2), x + (sprite_width/2), y + (sprite_height/2),false)
	draw_text_outline(x,y,"-Empty-",1,1,c_white,c_black)
}else{
	//draw thumbnail sprite
	if thumb_sprite != noone{
		draw_sprite_stretched(thumb_sprite,0,x - (sprite_width/2), y - (sprite_height/2), sprite_width, sprite_height)
	}else{
		draw_text_outline(x,y,"Error: No Thumbnail",1,1,c_white,c_black)
	}
	//draw file playtime
	draw_text_outline(x+64,y+32,timedata_str,1,1,c_white,c_black)
}

//
var str = "-Save "+string(_id)+"-"
if _id == 0{str = "Autosave"}
draw_text_outline(x,y+96,str,1,1,c_white,c_black)

//n
draw_self()
draw_set_alpha(1)
