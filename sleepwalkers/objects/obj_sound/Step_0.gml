if so_id != noone and sound_end = false{
	if !audio_is_playing(so_id){
		if end_event = true{event_end()}
		instance_destroy();
	}
}
