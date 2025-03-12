//set dimensions (extra buffer space for screenshake) 
var width = sprite_get_width(sprite_index)
var height = sprite_get_height(sprite_index)
var ratio1 = width/height
ratio1 = ceil(ratio1/0.1)*0.1
var ratio2 = global.game_width/global.game_height
ratio2 = ceil(ratio2/0.1)*0.1

if global.backdrop_stretch == true{
	x = -global.screen_buff
	y = -global.screen_buff
	image_xscale = (global.game_width+global.screen_buff*2)/width
	image_yscale = (global.game_height+global.screen_buff*2)/height
}else{
	
	if ratio1 < ratio2{
		image_xscale = (global.game_width+global.screen_buff*2)/width
		image_yscale = image_xscale
		var hh = height * image_yscale
		var hhh = hh - global.game_height
		x = -global.screen_buff
		y = -global.screen_buff-(hhh/2)
	}else if ratio1 > ratio2{
		image_yscale = (global.game_height+global.screen_buff*2)/height
		image_xscale = image_yscale
		var ww = width * image_xscale
		var www = ww - global.game_width
		x = -global.screen_buff-(www/2)
		y = -global.screen_buff
	}else{
		x = -global.screen_buff
		y = -global.screen_buff
		image_xscale = (global.game_width+global.screen_buff*2)/width
		image_yscale = (global.game_height+global.screen_buff*2)/height	
	}
}
