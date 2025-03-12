// 'ev' означает «событие», основа всей системы, проверяет, на каком событии находится игра.
function ev(){
	global.event_id ++

	if (global.event_id == global.event_count) and (global.event_finished == false){
		global.event_finished = true
		return (true);
	}else{
		return (false);	
	}

}
