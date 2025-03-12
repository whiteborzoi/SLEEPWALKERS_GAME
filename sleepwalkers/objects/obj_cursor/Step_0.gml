//control cursor movement
var gp_id = 0
var dz = 0.2
var con_spd = 8

global.cursor_clicked = false 
global.back_pressed = false

if controller == false{
	x = mouse_x
	y = mouse_y
	
	if mouse_check_button_pressed(mb_left){global.cursor_clicked = true}
	if mouse_check_button(mb_left){global.cursor_click = true}else{global.cursor_click = false}
	if mouse_check_button_pressed(mb_right){global.back_pressed = true}
	
	if gamepad_button_check_pressed(gp_id,gp_face1) or abs(gamepad_axis_value(gp_id,gp_axislh))>dz or abs(gamepad_axis_value(gp_id,gp_axislv))>dz{
		controller = true	
	}
}else{
	if gamepad_axis_value(gp_id,gp_axislh)> dz {x += (gamepad_axis_value(gp_id,gp_axislh)*con_spd)}
	if gamepad_axis_value(gp_id,gp_axislh)< -dz{x -= (-gamepad_axis_value(gp_id,gp_axislh)*con_spd)}
	if gamepad_axis_value(gp_id,gp_axislv)> dz {y += (gamepad_axis_value(gp_id,gp_axislv)*con_spd)}
	if gamepad_axis_value(gp_id,gp_axislv)< -dz{y -= (-gamepad_axis_value(gp_id,gp_axislv)*con_spd)}
	
	x = min(x,room_width)
	x = max(x,0)
	y = min(y,room_height)
	y = max(y,0)
	
	if gamepad_button_check_pressed(gp_id,gp_face1){global.cursor_clicked = true}
	if gamepad_button_check(gp_id,gp_face1){global.cursor_click = true}else{global.cursor_click = false}
	if gamepad_button_check_pressed(gp_id,gp_face2){global.back_pressed = true}
	
	
	if keyboard_check(vk_anykey) or mouse_check_button(mb_left) or mouse_check_button(mb_right){
		controller = false	
		window_mouse_set(x,y)
	}
}

