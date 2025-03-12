if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked) and (active == 1){
	if deleting == false{
		if mode == 0{ // save
			if empty == false{
				popup_create("Are you sure you want to overwrite this save?","Yes","No")
				hover_progress()
				popup = 1
			}else{
				alarm[1] = 1
				instance_destroy(obj_save_panel)
				instance_destroy(obj_save_back)
				instance_destroy(obj_save_delete)
				obj_save_slot.image_alpha = 0
				obj_cursor.image_alpha = 0
				obj_scene_option.image_alpha = 0
			}
		}else if empty == false{ // load
			if global.load_nextroom == false{
				scene_cleanup()
				instance_destroy(obj_save_slot)
				instance_destroy(obj_save_back)
				instance_destroy(obj_save_delete)
				load_game(filename)
			}else{
				room_goto_next()
				alarm[2] = 2
				global.load_nextroom = false
			}
		}
	}else{
		if empty == false{// delete
			popup_create("Are you sure you want to delete this save?","Yes","No")
			hover_progress()
			popup = 2
		}
	}
}

if popup > 0 and global.popup_select != 0{
	
	if popup == 1{ // overwrite save after popup
		if global.popup_select == 1{
			alarm[1] = 1
			instance_destroy(obj_save_panel)
			instance_destroy(obj_save_back)
			instance_destroy(obj_save_delete)
			obj_save_slot.image_alpha = 0
			obj_cursor.image_alpha = 0	
			obj_scene_option.image_alpha = 0
		}
	}else{ // delete after popup
		
		if global.popup_select == 1{
			delete_game(filename)
			if file_exists(thumb_filename){file_delete(thumb_filename)}
			if thumb_sprite != noone{
				sprite_delete(thumb_sprite)
				thumb_sprite = noone
				empty = true
			}
		}
	
		deleting = false 
		obj_save_delete.image_blend = c_white
		obj_save_delete.deleting = deleting 
		obj_save_panel.deleting = deleting
		obj_save_slot.deleting = deleting
		obj_save_slot.image_blend = c_white
	
	}

	global.popup_select = 0
	popup = false
}
