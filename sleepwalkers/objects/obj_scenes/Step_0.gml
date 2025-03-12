///@desc EXECUTE SCENE

if global.event_finished == false{ 

event_start() // Сброс идентификатора текущего события (необходимо)

switch(global.scene_current){ // Сцены разделены по функциям переключателя, чтобы максимально увеличить скорость
// Добавьте дополнительные сцены в macros_init() !!

case scenes.intro: // Вступительная сцена

if ev(){
	// пример окончания события:
	play_bgm(so_bgm) // не заканчивается событие
	wait_time(1) // ршает мероприятие
}
if ev(){
	 // создание персонажа
	character_create("Котик", spr_cat_silly, 0, 0, appear_instant)
	// устанавливает атрибуты текста персонажа
	character_text_set("Котик", c_orange, c_white, c_orange,  c_white, font_text, 1.2, font_text, 1) 
	// создает текстовое поле, используя имя/атрибуты созданного персонажа
	textbox_create("Котик", "Если вы вдруг запустили игру, не посмотрев код, то первым делом прочтите NOTES -> INSTRUCTIONS")
}
if ev(){
	//поместите в textbox_create() столько строк, сколько захотите
	textbox_create("Котик", 
	"это первая строка текста",
	"а это вторая")
}
if ev(){
	// Если вам нужно пустое имя, введите пустую строку (будут использоваться текстовые атрибуты по умолчанию)
	textbox_create("Котик", "это пример сцены и диалога", "а тут какой-то текст...")
}
if ev(){
	// Types of fades:
	//	fade_full
	//	fade_right
	//	fade_left
	//	fade_instant
	
	// Speeds of fades:
	//	fadetime_fast
	//	fadetime_medium
	//	fadetime_long
	
	// Макросы скорости/типа можно настроить в macros_init().
	
	fade_out(fade_right, fadetime_medium, c_black, true)
	
}
if ev(){
	// изменяет переменную сцены, чтобы разделить штуки
	scene_change(scenes.example, true)
}


break;


case scenes.example: //пример сцены

if ev(){
	// изменяет фоновый спрайт
	backdrop_set(spr_backdrop_lenin)
	// end event after 1 second
	wait_time(1)
}
if ev(){
	fade_in(fade_left, fadetime_medium, true)
}
if ev(){
	character_create("Котик", spr_cat_silly, pos_offscreenleft, global.game_height, appear_instant, false, noone, 2.4, false)
	character_text_set("Котик", c_purple, c_white, c_purple, c_white, font_text, 1, font_text, 1.2)
	// 'move_exp' means exponential movement
	character_move_exp("Котик", pos_left, global.game_height, movespeed_fast, true)
}
if ev(){
	textbox_create("Котик", "Мяу мяу!!!")
}
if ev(){
	// text effects are set by adding the string affected, multiple can be set in 1 script
	text_set_shake("штуки")
	text_set_wave("эффекты")
	text_set_color("штуки", c_blue,c_white, "эффекты!", c_lime, c_white)
	textbox_create("Котик", "привет привет покажу некоторые эффекты и штуки которые можно делать")
}
if ev(){
	textbox_create("Котик", "Это был пример сцены и диалога (котик почему-то не отображается)")
}
if ev(){
	wait_time(1)	
}

if ev(){
	text_set_wave_all()
	choice_create(choices.cat,"Котик", "как у тебя дела?", "отлично!!","ну пойдет","плохо((")	
}
// choice_create() установит заданный идентификатор выбора, который можно будет использовать после с помощью choice_get
// выбор по умолчанию равен 0, прежде чем он будет изменен с помощью скрипта choice_create

if choice_get(choices.cat) == 1{ // choice option 1
	if ev(){
		character_sprite("Котик", spr_cat_silly)
		character_hop("Котик", hop_small,false)
		textbox_create("Котик", "ура!")
	}
}
if choice_get(choices.cat) == 2{ // choice option 2
	if ev(){
		character_sprite("Котик", spr_cat_silly)
		character_hop("Котик", hop_small,false)
		textbox_create("Котик", "это неплохо")
	}
}
if choice_get(choices.cat) == 3{ // choice option 3
	if ev(){
		character_sprite("Котик", spr_cat_silly)
		character_hop("Котик", hop_large,false)
		textbox_create("Котик", "мяумяу(((")
	}
}
// выбор сохраняется автоматически, btw
if ev(){
	wait_time(1)	
}
if ev(){
	character_sprite("Котик", spr_cat_silly)
	textbox_create("Котик","В любом случае, спасибо что запустили этот скрипт. Спасибо, что помогаете делать игру, люблю вас :3")
}

if ev(){
	choice_create(choices.temporary,"","Что хотите сделать теперь?","Restart the scene","Quit to menu","Quit to desktop")
}
if ev(){
	fade_out(fade_full,fadetime_long, c_black, true)
}
if choice_get(choices.temporary) == 1{
	if ev(){
		// reset the scene
		character_cleanup()
		
		backdrop_set(spr_backdrop_lenin);	
		
		scene_change(scenes.intro, true)
		
		fade_in(fade_full,fadetime_medium, false)
	}
}
if choice_get(choices.temporary) == 2{
	if ev(){
		// quit
		quit_to_menu()
	}
}
if choice_get(choices.temporary) == 3{
	if ev(){
		// quit for real
		game_end()
	}
}


break;

 
}

}
