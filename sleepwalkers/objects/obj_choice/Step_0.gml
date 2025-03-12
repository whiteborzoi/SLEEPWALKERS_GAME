//click
if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked) and image_alpha = 1 and
	active == 1 and start == true and alarm[1] == -1
{
	if audio_exists(global.so_choice_select){audio_play_sound(global.so_choice_select,0,0)}
	alarm[1] = 60
	obj_choice.squish = true
	squish = false
	clicked = true
	image_yscale = 0.6
	image_xscale = 0.6
	text_size = 0.6
}

//hover
if active == 1 and squish == false and clicked = false{
	if position_meeting(obj_cursor.x,obj_cursor.y,id) and image_alpha == 1{
		image_xscale = lerp(image_xscale,1.2,0.2)
		text_size = lerp(image_xscale,1.2,0.2)
	
		if so_refresh = false{
			so_refresh = true
			if audio_exists(global.so_choice_hover){audio_play_sound(global.so_choice_hover,0,0)}
		}
	}else{
		image_xscale = lerp(image_xscale,1,0.4)
		text_size = lerp(image_xscale,1,0.4)
	
		so_refresh = false
	}
}

//image manipulation
if squish == true{
	image_yscale = lerp(image_yscale,0,0.2)
}
if clicked == true{
	image_xscale = lerp(image_xscale,1.2,0.1)
	image_yscale = lerp(image_yscale,1,0.1)
	text_size = lerp(text_size,1.2,0.1)
}

//textbox setup
if instance_exists(obj_textbox) and image_alpha == 0{
	var tx = obj_textbox
	if tx.text_current == tx.text[tx.line]{image_alpha = 1 alarm[0] = room_speed}
}
