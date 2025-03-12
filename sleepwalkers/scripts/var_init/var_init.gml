// Sets the variables
function var_init() {
	
	//
	randomize();
	
	//
	macros_init();
	
	// текстовое поле
	global.max_chars = 256 // максимальное количество символов в текстовом поле
	
	// порядок событий
	global.event_count = 1
	global.event_finished = false
	global.event_id = 0
	
	// выбор
	global.choice_id = 0
	global.choice = array_create(1, 0) // 
	
	// screenshake (причина тряски?) (спиздила, вдруг понадобится)
	global.screenshake_enable = true;
	global.screen_buff = 10 //чем больше значение тем больше тряска
	
	// фокус(спиздила)
	global.focus_darken = false
	global.focus_darken_color = c_gray // blend color of non-focused characters
	
	// textbox log
	global.textlog_max = 64 // make as big as you want ig
	global.textlog = ds_grid_create(global.textlog_max,8)
	
	// сцены
	global.scene_current = 0;
	
	// персонажи
	global.characters = ds_map_create()
	
	// звуковые эффекты
	global.bgm = noone;
	global.bgm_id = -1;
	
	// тектовые эффекты
	global.text_wave_first[0] = 0
	global.text_wave_last[0] = 0
	global.text_wave_substrings[0] = ""
	global.text_wave_substring_use = false
	global.text_wave_size = 0
	
	global.text_shake_first[0] = 0
	global.text_shake_last[0] = 0
	global.text_shake_substrings[0] = ""
	global.text_shake_substring_use = false
	global.text_shake_size = 0
	
	global.text_color_first[0] = 0
	global.text_color_last[0] = 0
	global.text_color_top[0] = c_white
	global.text_color_bot[0] = c_ltgray
	global.text_color_substrings[0] = ""
	global.text_color_substring_use = false
	global.text_color_size = 0
	
	global.text_font_first[0] = 0
	global.text_font_last[0] = 0
	global.text_font_id[0] = noone
	global.text_font_substrings[0] = ""
	global.text_font_substring_use = false
	global.text_font_size = 0
	global.text_font_all = false
	
	global.text_outline_first[0] = 0
	global.text_outline_last[0] = 0
	global.text_outline_color[0] = noone
	global.text_outline_substrings[0] = ""
	global.text_outline_substring_use = false
	global.text_outline_size = 0
	
	global.text_pause_int[0] = 0
	global.text_pause_duration[0] = 0
	global.text_pause_substrings[0] = ""
	global.text_pause_substring_use = false
	global.text_pause_size = 0
	
	// textbox line
	global.textbox_saveline = 0
	
	// спрятать текстбокс
	global.hud_invisible = false
	
	// фоны
	global.backdrop = noone
	global.backdrop_stretch = false
	
	// автоскрол текста
	global.autotext = false;
	
	// скорость текста
	global.text_speed = 0.4
	
	// время игры
	global.playtime_minutes = 0
	global.playtime_hours = 0
	
	// popup
	global.popup_select = 0
	
	// hover
	global.hover_active = 1
	
	// сохранить
	global.load_nextroom = false
	
	// load saved options (if existing)
	load_options()
}
