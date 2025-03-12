// Настройка функции автосохранения и ее частоты

function autosave_set(autosave, autosave_minutes = 10){
	global.autosave = autosave;
	global.autosave_frequency = (autosave_minutes*room_speed*60)
}

