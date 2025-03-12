/// @description Destroy
choice_select(num);
instance_destroy(obj_choice);
if instance_exists(obj_textbox){
	with (obj_textbox){
		textbox_reset();	
		instance_destroy();
	}
}
event_end();
