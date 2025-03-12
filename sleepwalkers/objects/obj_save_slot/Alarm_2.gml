/// @description Load from MainMenu
global.load_nextroom = false
scene_cleanup()
instance_destroy(obj_save_slot)
instance_destroy(obj_save_back)
instance_destroy(obj_save_delete)
load_game(filename)
