if fadeout_type != -1 and appeared = false{
	switch (fadeout_type) {
	    case fade_instant:
	        alpha = 1
			appeared = true
			if end_event == true{event_end()}
		break;
		case fade_full:
	        alpha += spd
			if alpha >= 1{
				alpha = 1
				appeared = true
				if end_event == true{event_end()}
			}
		break;
		case fade_left:
			alpha = 1
			xx = lerp(xx,room_width+2,spd)
			if xx >= room_width{
				appeared = true
				if end_event == true{event_end()}
			}
		break;
		case fade_right:
			alpha = 1
			xx = lerp(xx,room_width+2,spd)
			if xx >= room_width{
				appeared = true
				if end_event == true{event_end()}
			}
		break;
	}
}

if fadein_type != -1 and appeared = true{
	switch (fadein_type) {
	    case fade_instant:
			if end_event == true{event_end()}
			instance_destroy()
		break;
		case fade_full:
	        alpha -= spd
			if alpha <= 0{
				if end_event == true{event_end()}
				instance_destroy()
			}
		break;
		case fade_left:
			xx = lerp(xx,-2,spd)
			if xx <= 0{
				if end_event == true{event_end()}
				instance_destroy()
			}
		break;
		case fade_right:
			xx = lerp(xx,-2,spd)
			if xx <= 0{
				if end_event == true{event_end()}
				instance_destroy()
			}
		break;
	}
}
