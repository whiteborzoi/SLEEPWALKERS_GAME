draw_set_color(col)
draw_set_alpha(alpha)
if appeared = false{
	switch (fadeout_type){
		case fade_instant:
			draw_rectangle(-1,-1,room_width,room_height,false)
		break;
		case fade_full:
			draw_rectangle(-1,-1,room_width,room_height,false)
		break;
		case fade_left:
			draw_rectangle(room_width,-1,room_width-xx,room_height,false)
		break;
		case fade_right:
			draw_rectangle(-1,-1,xx,room_height,false)
		break;
	}
}else{
	switch (fadein_type){
		case fade_instant:
			draw_rectangle(-1,-1,room_width,room_height,false)
		break;
		case fade_full:
			draw_rectangle(-1,-1,room_width,room_height,false)
		break;
		case fade_left:
			draw_rectangle(-1,-1,xx,room_height,false)
		break;
		case fade_right:
			draw_rectangle(room_width,-1,room_width-xx,room_height,false)
		break;
	}
}
if fadein_type = -1 and appeared = true{
	draw_rectangle(-1,-1,room_width,room_height,false)
}
draw_set_alpha(1)
