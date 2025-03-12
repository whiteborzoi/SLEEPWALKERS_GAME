// Создает спрайт, который проходит 1 цикл анимации

///@param sprite
///@param x
///@param y
///@param [end_event]
///@param [depth]
///@param [scale]
function particle_create(sprite,xx,yy,end_event = false, _depth = depth_top, scale = 1){
	var inst = instance_create_depth(xx,yy,_depth,obj_effect)
	inst.sprite_index = sprite
	inst.set = true
	inst.end_event = end_event
	inst.image_xscale = scale
	inst.image_yscale = scale
}

