// Меняет текущую сцену (просто переменная), полезно для разбиения кода
// очень, очень длинная сцена будет работать хуже, поэтому не забывайте разделять их на части
function scene_change(scene,end_event){
	global.scene_current = scene;
	if end_event event_end();
	global.event_count = 1;
}
