function menu_init(){
	// добавьте в массив еще несколько логотипов/сообщений
	logo[0] = spr_eye 
	logo[1] = spr_examplelogo
	logo_width = 512 // авто установка высоты в зависимости от ширины
	logo_pause = 1 // сколько секунд отображается каждый логотип
	fade_spd = 0.02
	logo_antialias = false
	
	logo_skip = global.debug_mode // ДЛЯ DEBUG: пропускает логотипы, чтобы вы могли тестировать быстрее
	
	menu_background = spr_background_menu
	background_strech = false // если false, то некоторые части могут быть обрезаны, но исходное соотношение спрайтов сохраняется
	menu_logo = spr_gamelogo
	menulogo_x = 256 + 64
	menulogo_y = 128 + 64
	menulogo_size = 3
	menulogo_antialias = false
	
	menu_options_set(256+64,256+160,32,1,"новая игра","загрузить игру","настройки","выход")
}
