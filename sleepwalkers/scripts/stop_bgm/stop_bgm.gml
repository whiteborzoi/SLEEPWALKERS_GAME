// Затухает и останавливает bgm

function stop_bgm(){
	var fade_time = 4
	
	if global.bgm != noone{
		global.bgm_id = -1;
		
		audio_sound_gain(global.bgm,0,fade_time*1000);
		var inst = instance_create_depth(0,0,0,obj_sound);
		inst.sound_end = true;
		inst.alarm[1] = fade_time*60;
	}
}
