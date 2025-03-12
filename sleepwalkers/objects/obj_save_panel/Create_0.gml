depth = -3
mode = 0 //0 save, 1 load
deleting = false
save_slots = 6
row_length = 3

var distx = 320
var disty = 208
var even = row_length % 2
if even == 0{even = 1}else{even = 0}

//
instance_create_depth(128,global.game_height-64,depth-1,obj_save_back)
//
instance_create_depth(global.game_width-128,128,depth-1,obj_save_delete)


for (var i = 0; i < save_slots; ++i) {
	var column = floor(i / row_length);
	var yy = (global.game_height/2 - 128 + column*disty);
	//stupid dumb x cord >:(
	var xx = global.game_width/2 - (distx*floor(row_length/2)) + (i*distx) - (column*(distx*row_length)) + (even*(distx/2));
	var ss = instance_create_depth(xx,yy,depth-1,obj_save_slot);
	ss._id = i
}

