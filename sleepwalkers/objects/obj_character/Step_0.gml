var scale_tampered = false; // check if sprite is being scaled by first few functions

//appear
if appeared = false{
	switch (appear_type){
		case  appear_instant:
			image_alpha = 1
			appeared = true
			if end_event_create == true{event_end()}
		break;
		case  appear_fade:
			image_alpha = lerp(image_alpha,1,0.05)
			if image_alpha >= 0.95{
				image_alpha = 1
				appeared = true
				if end_event_create == true{event_end()}
			}
		break;
		case  appear_size:
			if sized = false{
				sized = true
				image_alpha = size
				image_xscale = size/10
				image_yscale = size/10
			}
			if sized = true{
				image_xscale = lerp(image_xscale,size,0.15)
				image_yscale = image_xscale
			}
			if image_xscale >= size and sized = true{
				image_xscale = size
				image_yscale = size
				appeared = true
				if end_event_create == true{event_end()}
			}
			scale_tampered = true
		break;
	}	
}

//dissapear
if dissapear_type != -1{
	switch (dissapear_type){
		case  appear_instant:
			if end_event_destroy == true{event_end()}
			instance_destroy()
		break;
		case  appear_fade:
			image_alpha = lerp(image_alpha,0,0.08)
			if image_alpha <= 0.05{
				if end_event_destroy == true{event_end()}
				instance_destroy()
			}
		break;
		case  appear_size:
			image_xscale = lerp(image_xscale,0,0.2)
			image_yscale = image_xscale
			if image_xscale <= 0.05{
				if end_event_destroy == true{event_end()}
				instance_destroy()
			}
			scale_tampered = true
		break;
	}	
}


if sprite_index != noone{ // effects n' stuff

	//move
	if move_speed > 0{
		if move_type == move_lin{
			x = approach(x, xto, move_speed)
			y = approach(y, yto, move_speed)
		}
		if move_type == move_exp{
			var xtra_spd = 0
			if (abs(x - xto) < 2) or (abs(y - yto) < 2){
				xtra_spd = 0.05
			}
			x = lerp(x,xto,move_speed+xtra_spd)	
			y = lerp(y,yto,move_speed+xtra_spd)	
			if abs(x - xto) < 1{x = xto}
			if abs(y - yto) < 1{y = yto}
		}
		if x == xto and y == yto{
			move_speed = 0
			if end_event_move == true{event_end()}
		}
	}

	//flash 
	if flash_alpha > 0{
		flash_alpha -= flash_decay_rate
		if flash_alpha <= 0{
			flash_alpha = 0
			if end_event_flash == true{event_end()}
		}
	}

	//squish
	if (squishing == true) and (image_xscale != (size*(-size*flip)) or (image_yscale != size)){
		var flipped = size
		if image_xscale < 0{flipped = -size}
	
		image_xscale = lerp(image_xscale,flipped,squish_time_x*12)	
		image_yscale = lerp(image_yscale,size,squish_time_y*12)
	
		if abs(image_xscale-flipped)<0.001{image_xscale = flipped}
		if abs(image_yscale-size)<0.001{image_yscale = size}
	
		if image_xscale == flipped and image_yscale == size{
			if end_event_squish == true{event_end()}	
			squishing = false
		}
		scale_tampered = true
	}

	//hop
	if hop == true{
		hop_vsp += hop_grv
		y += hop_vsp
		if (y+hop_vsp)>hop_y{
			y = hop_y
			hop = false
			if end_event_hop == true{event_end()}
		}
	}

	//focus
	if global.focus_darken == true{
		var col_spd = 10
		if instance_exists(obj_textbox) and obj_textbox.name_id != name_id and obj_textbox.name_id != ""{
			var r = color_get_red(image_blend)
			var b = color_get_blue(image_blend)
			var g = color_get_green(image_blend)
			var r2 = color_get_red(global.focus_darken_color)
			var b2 = color_get_blue(global.focus_darken_color)
			var g2 = color_get_green(global.focus_darken_color)
		
			image_blend = make_color_rgb(approach(r,r2,col_spd),approach(g,g2,col_spd),approach(b,b2,col_spd))
		}else{
			var r = color_get_red(image_blend)
			var b = color_get_blue(image_blend)
			var g = color_get_green(image_blend)
			var r2 = color_get_red(c_white)
			var b2 = color_get_blue(c_white)
			var g2 = color_get_green(c_white)
		
			image_blend = make_color_rgb(approach(r,r2,col_spd),approach(g,g2,col_spd),approach(b,b2,col_spd))
		}
	}
}
