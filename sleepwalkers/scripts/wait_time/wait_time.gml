// Приостановите развитие сцены на столько секунд.

function wait_time(seconds){
	if !instance_exists(obj_wait){
		var obj = instance_create_depth(0,0,0,obj_wait)
		if seconds > 0{
			obj.alarm[0] = seconds * room_speed
		}else{
			obj.alarm[0] = 1
		}
	}
}
