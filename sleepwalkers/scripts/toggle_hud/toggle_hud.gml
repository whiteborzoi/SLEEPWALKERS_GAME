function toggle_hud(){
	if global.hud_invisible == true{
		
		global.hud_invisible = false
		if instance_exists(obj_letter){
			obj_letter.image_alpha = 1
		}
		if instance_exists(obj_scene_option){
			obj_scene_option.image_alpha = 1
		}
		
	}else{
		
		global.hud_invisible = true	
	
		if instance_exists(obj_letter){
			obj_letter.image_alpha = 0
		}
		if instance_exists(obj_scene_option){
			obj_scene_option.image_alpha = 0
		}
		
	}
}
