// Установить шрифт для всей строки текста

function text_set_font_all(font){
	text_set_font_int(0,global.max_chars,font)
	
	// changes entire font for textlog purpose
	global.text_font_all = true
}

