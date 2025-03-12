// text reading
if pause_frames == 0{
	
	//
	textbox_letter();
	
	// continue reading
	letters += global.text_speed
	
	// max letters
	letters = min(letters,string_length(text[line])-1)
	
	var letter_i = floor(letters)
	
	// punctuation pause
	if (global.textbox_pause){
		switch (letter_current){
		    case ".":
				pause_frames = global.text_speed * (global.pause_period * room_speed)
				if sound_current != noone{audio_stop_sound(sound_current)}
		    break;
			case ",":
				pause_frames = global.text_speed * (global.pause_comma * room_speed)
				if sound_current != noone{audio_stop_sound(sound_current)}
		    break;
			case "-":
				pause_frames = global.text_speed * (global.pause_dash * room_speed)
				if sound_current != noone{audio_stop_sound(sound_current)}
		    break;
			case "!":
				pause_frames = global.text_speed * (global.pause_exclamation * room_speed)
				if sound_current != noone{audio_stop_sound(sound_current)}
		    break;
			case "?":
				pause_frames = global.text_speed * (global.pause_question * room_speed)
				if sound_current != noone{audio_stop_sound(sound_current)}
		    break;
		}
		
		// manual pause 
		if (pause_dur[letter_i] > 0) and (pause_last != letter_i){
			pause_frames = global.text_speed * (pause_dur[letter_i] * room_speed)
			pause_last = letter_i
			if sound_current != noone{audio_stop_sound(sound_current)}
		}
	}
	
}else{
	// finish pause
	pause_frames -= 1
	if pause_frames < 0{pause_frames = 0}
}

// speech synthesis
if (sound_current == noone or !audio_is_playing(sound_current)) and speech != noone and pause_frames == 0 and text_current != text[line]{
	sound_current = audio_play_sound(speech,0,0)
	audio_sound_pitch(sound_current,random_range(0.5+global.text_speed,1+global.text_speed))
}

// proceeding
if (global.cursor_clicked){
	if (global.hud_invisible == true){
		toggle_hud()
	}
	else
	if !position_meeting(obj_cursor.x,obj_cursor.y,obj_parent_hover) and (global.hover_active==1) and end_event == true{
		if text_current == text[line]{
			textbox_reset();
		}else{
			while letters < string_length(text[line])-1{
				letters = floor(letters)
				textbox_letter();
				letters++;
				pause_frames = 0;
			}
		}
	}
}

// hud invisible
if global.back_pressed and position_meeting(mouse_x,mouse_y,obj_textbox) and (global.hover_active==1) and global.hud_invisible == false{
	global.back_pressed = false
	toggle_hud()
}
if global.back_pressed and (global.hover_active==1) and global.hud_invisible == true{
	toggle_hud()
}	


// debug skip
if global.debug_mode == true{
	if mouse_check_button(mb_right) and !position_meeting(obj_cursor.x,obj_cursor.y,obj_parent_hover) and (global.hover_active==1) and end_event == true{
		if text_current == text[line]{
			textbox_reset();
		}else{
			while letters < string_length(text[line])-1{
				letters = round(letters)
				textbox_letter();
				letters++;
				pause_frames = 0;
			}
		}
	}
}

// auto proceeding
if (global.autotext) and end_event == true and text_current == text[line] and alarm[5] == -1{
	alarm[5] = 60
}

// icon index
icon_index += icon_index_speed;
if (icon_index > icon_index_max) icon_index = 0;
