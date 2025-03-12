// Встряхивает камеру в течение нескольких секунд или в течение всего события

// ПРИМЕЧАНИЕ: введите '-1' в аргумент 'seconds', чтобы встряхивание длилось все событие 
//(необходимо завершить событие в другом месте))
function screenshake(magnitude,seconds,end_event){
	var obj = instance_create_depth(0,0,0,obj_screenshake);
	obj.magnitude = magnitude;
	obj.shake_remain = magnitude;
	obj.time = seconds * room_speed;
	obj.end_event = end_event;
	obj.event_started = global.event_count
}

