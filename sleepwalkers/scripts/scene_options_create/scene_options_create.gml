//Создайте кнопки опций для игрового процесса (сохранение, загрузка, автовоспроизведение, опции, выход)
//Эти опции должны были быть установлены в scene_options_set()

function scene_options_create(){
	var ww = 0;
	draw_set_font(global.font_options)

	for (var i = 0; i < array_length(global.scene_options); ++i) {

		var inst = instance_create_depth(global.scene_options_x + ww + (global.scene_options_sep*i), global.scene_options_y, 0, obj_scene_option)
		inst.idd = i
		inst.image_index = i
		
		ww += (string_width(global.scene_options[i])*global.scene_options_size)*.5;
		if i < array_length(global.scene_options) - 1{
			ww += (string_width(global.scene_options[i+1])*global.scene_options_size)*.5;
		}
	}
}
