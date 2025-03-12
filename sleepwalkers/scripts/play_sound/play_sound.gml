// Воспроизвести звуковой эффект

function play_sound(sound, end_event){
	var inst = instance_create_depth(0,0,0,obj_sound);
	inst.so = sound;
	inst.end_event = end_event;
}
