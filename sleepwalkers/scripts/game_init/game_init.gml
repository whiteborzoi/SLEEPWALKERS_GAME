// запускается в коде создания room_init, 
// устанавливает все настраиваемые значения
function game_init(){
	
	// Устанавливает разрешение игры (нужно сделать это первым!)
	resolution_init(1366, 768, 21/9, 16/10)
	
	
	// НАСТРАИВАЕМЫЕ СКРИПТЫ 
	
	// каждый из них нужно сделать один раз,
	// их можно повторить в любое время, когда вы сочтете нужным
	
	// проверьте скрипты, что они делают!
	
	//
	debug_set(false) // режим отладки (включает пропуск событий при нажатии правой кнопки мыши и несколько значений)
	
	font_set(font_text, font_options) // шрифты по умолчанию
	
	textbox_set(spr_textbox, spr_text_continue, spr_text_continue_auto, global.game_width/2, global.game_height, 56, 560, 160, 560, 215)
	
	choice_set(spr_optionbox) // спрайт выбора
	
	cursor_set(spr_cursor_default, spr_cursor_select) // спрайт курсора
	
	focus_set(true, c_gray) // фокус на персонаже (делает не говорящих персонажей темнее)

	shadow_set(true, c_black, 1) // автоматическая тень текста
	
	audio_set(so_select1, so_select2) // звуковые эффекты взаимодействия
	
	scene_options_set(64, 32, 32, 1, "загрузить", "сохранить", "настройки", "выход") // in-game options 
	
	autosave_set(true, 5) //автосохранение
	
	popup_set(spr_popup, global.game_width/2, global.game_height/2, -64, 64) // popup windows
	
	textbox_pause_set(true, 0.5, 0.25, 0.25, 0.5, 0.5) // интервалы паузы в текстовом поле
	
	// размывает пиксели, в основном
	// установите аргумент 'characters' в false, если ваши спрайты маленькие, или true, если они большие
	antialiasing_set(true, false)
}

