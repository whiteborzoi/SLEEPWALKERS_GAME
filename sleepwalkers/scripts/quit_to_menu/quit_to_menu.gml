// Очищает сцену и перезапускается, возвращаясь в главное меню
function quit_to_menu(){
	// cleanup
	scene_cleanup()
	
	// return
	room_goto(room_menu)
}
