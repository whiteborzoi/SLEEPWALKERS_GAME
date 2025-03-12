//make sure cam is fixed
xx = clamp(x,view_w,room_width-view_w);
yy = clamp(y,view_h,room_height-view_h);
camera_set_view_pos(view_camera[0],xx - view_w,yy - view_h)

if end_event == true and time >= 0{
	event_end();
}

