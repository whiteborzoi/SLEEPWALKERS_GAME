// Мгновенная остановка bgm

function stop_bgm_instant(){
	if global.bgm != noone{
		global.bgm_id = -1;
		
		audio_stop_sound(global.bgm);
		global.bgm = noone;
	}
}
