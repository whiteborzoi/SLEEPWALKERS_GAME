// Устанавливает очень тонкую тень для текста (по умолчанию - черная)

function shadow_set(shadow, color = c_white, distance = 0){
	global.shadow = shadow
	global.shadow_color = color
	global.shadow_distance = distance
}
