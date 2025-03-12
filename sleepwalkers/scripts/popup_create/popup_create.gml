function popup_create(question,option1,option2){
	var pp = instance_create_depth(global.popup_x,global.popup_y,-5,obj_popup)
	pp.text = question
	pp.option1 = option1
	pp.option2 = option2
}
