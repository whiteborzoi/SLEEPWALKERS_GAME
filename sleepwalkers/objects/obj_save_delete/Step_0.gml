if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked){
	if deleting == true{
		deleting = false 
		image_blend = c_white
		obj_save_panel.deleting = deleting
		obj_save_slot.deleting = deleting
		obj_save_slot.image_blend = c_white
	}else{
		deleting = true
		image_blend = c_gray
		obj_save_panel.deleting = deleting
		obj_save_slot.deleting = deleting
		obj_save_slot.image_blend = c_red
	}	
}
