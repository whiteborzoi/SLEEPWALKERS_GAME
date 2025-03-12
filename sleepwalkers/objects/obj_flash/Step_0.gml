alpha -= spd;
if alpha <= 0{
	instance_destroy();
	if end_event == true{end_event()}
}
