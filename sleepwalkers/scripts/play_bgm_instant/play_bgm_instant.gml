// Включает фоновую музыку без затухания

function play_bgm_instant(bgm){
	// stop previous bgm
	if global.bgm != noone{
		audio_stop_sound(global.bgm)
		for (var i = 0; i < instance_number(obj_sound); ++i) {
		    var inst = instance_find(obj_sound,i)
			if inst.alarm[1] > -1{
				instance_destroy(inst)	
			}
		}
	}
	// play new bgm
	global.bgm = audio_play_sound(bgm,0,1);
	audio_sound_gain(global.bgm,1,0)
	global.bgm_id = bgm
}
