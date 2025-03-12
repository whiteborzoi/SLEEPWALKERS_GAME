// Gotta set the vars
var_init();

// Customizable stuff
game_init();

// Set up a persistant camera
instance_create_depth(0,0,0,obj_cam)

// Set up a cleanup obj
instance_create_depth(0,0,0,obj_cleanup)

// Continue
room_goto_next();

