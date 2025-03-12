// Включает фоновую музыку (bgm)

function play_bgm(bgm, position = 0){
	// остановить предыдущий bgm
	if global.bgm != noone{
		audio_stop_sound(global.bgm)
		for (var i = 0; i < instance_number(obj_sound); ++i) {
		    var inst = instance_find(obj_sound,i)
			if inst.alarm[1] > -1{
				instance_destroy(inst)	
			}
		}
	}
	// // воспроизвести новый bgmНажмите, чтобы использовать этот вариант
	global.bgm = audio_play_sound(bgm,0,1);
	audio_sound_gain(global.bgm,0,0)
	audio_sound_gain(global.bgm,1,4000)
	audio_sound_set_track_position(global.bgm,position)
	global.bgm_id = bgm
}
