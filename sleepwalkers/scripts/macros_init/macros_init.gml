// глобальные константы для удобного построения сцен
function macros_init(){
	
	// сцены
	enum scenes{
		intro,
		example
	}
	
	// выборы
	enum choices{
		temporary,
		cat
	}

	// переменная скорость двжиения
	#macro movespeed_slow 0.01 // не может быть меньше 0,01
	#macro movespeed_medium 0.05
	#macro movespeed_fast 0.1
	
	// hop magnitudes
	#macro hop_small 15
	#macro hop_medium 20
	#macro hop_large 25
	
	// screenshake magnitudes
	#macro screenshake_low 2
	#macro screenshake_medium 5
	#macro screenshake_high 10 // shouldn't be larger than global.screen_buff (in var_init)

	// depth
	#macro depth_top 2
	#macro depth_mid 3
	#macro depth_bot 4
	
	// позиции на экране
	// на основе глобальных размеров экрана
	#macro pos_left round(global.game_width/4)
	#macro pos_middle round(global.game_width/2)
	#macro pos_right  round(global.game_width/2 + global.game_width/4)
	#macro pos_midleft round(global.game_width/4 + global.game_width/8)
	#macro pos_midright round(global.game_width/2 + global.game_width/4 - global.game_width/8)
	
	#macro pos_offscreenleft - 256
	#macro pos_offscreenright global.game_width + 256
	
	// длина затухания
	#macro fadetime_fast 0.5
	#macro fadetime_medium 0.1
	#macro fadetime_long 0.01

	
	
	
	// макросы типов (НЕ изменять) -----------------------------------------------------------------
	
	// появляющиеся типы (символы)
	#macro appear_instant 1
	#macro appear_fade 2
	#macro appear_size 3 
	
	#macro disappear_instant 1 // то же самое
	#macro disappear_fade 2
	#macro disappear_size 3 
	
	// movement types
	#macro move_lin 0
	#macro move_exp 1
	
	// fade types (screen transition)
	#macro fade_instant 0
	#macro fade_full 1
	#macro fade_left 2
	#macro fade_right 3
}
