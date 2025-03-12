//fix the cam
xx = clamp(x,view_w,room_width-view_w);
yy = clamp(y,view_h,room_height-view_h);

//shake the cam
if (global.screenshake_enable){
	xx += random_range(-shake_remain,shake_remain);
	yy += random_range(-shake_remain,shake_remain);
	if time >= 0{
		shake_remain = max(0,shake_remain-((1/time)*magnitude));
	}else{
		if event_started != global.event_count{
			instance_destroy()	
		}
	}
}

camera_set_view_pos(view_camera[0],xx - view_w,yy - view_h)

if shake_remain == 0{
	instance_destroy()	
}
