//Создает собственно меню опций

function options_create(){
	var _depth = -3
	
	instance_create_depth(global.game_width/2, 128,_depth,obj_option_audio)
	
	instance_create_depth(global.game_width/2, 256,_depth,obj_option_textspeed)
	
	instance_create_depth(global.game_width/2 - 96, 256+96,_depth,obj_option_screenshake)
	
	instance_create_depth(128,global.game_height-64,_depth,obj_option_back)
	
	//must be created last (parent obj of sorts, darkens background)
	instance_create_depth(global.game_width/2 - 96, 256+160,_depth,obj_option_fullscreen)
	
}
