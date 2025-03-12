// Устанавливает сглаживание для игры в целом (поверхность приложения)
// и отдельно для персонажей...

function antialiasing_set(game, characters){
	global.antialiasing = game
	global.antialiasing_char = characters
	if (game==true){gpu_set_tex_filter(true)}else{gpu_set_tex_filter(false)}
}
