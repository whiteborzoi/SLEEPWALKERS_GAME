/// @description End Event (Delayed Destroy)
if end_event == true{
	event_end()
}
if audio_is_playing(sound_current){
	audio_stop_sound(sound_current)	
}

alarm[4] = 1
