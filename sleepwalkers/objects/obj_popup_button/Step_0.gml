if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked) and active{
	global.popup_select = _id
	alarm[1] = 1
	obj_popup.hidden = true
	obj_popup_button.hidden = true
}
