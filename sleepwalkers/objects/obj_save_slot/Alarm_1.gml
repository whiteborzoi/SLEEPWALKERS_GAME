///@desc Save
if file_exists(thumb_filename){file_delete(thumb_filename)}
save_game(filename);
screen_save(thumb_filename);
instance_activate_all();
instance_destroy(obj_save_slot);
obj_cursor.image_alpha = 1;
obj_scene_option.image_alpha = 1;
if thumb_sprite != noone{
	sprite_delete(thumb_sprite)
	thumb_sprite = noone
}
hover_return()
