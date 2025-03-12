///@desc Play time
secs ++
if secs == 60{
	secs = 0;
	global.playtime_minutes ++;
}
if global.playtime_minutes == 60{
	global.playtime_minutes = 0;
	global.playtime_hours ++;
}

alarm[0] = room_speed
