if mainmenu == false{
	sprite_index = logo[logo_curr]
	image_xscale = logo_width/sprite_get_width(sprite_index)
	image_yscale = image_xscale

	if fade_type == 0 and alarm[0] == -1{
		fade_alpha -= fade_spd
		if fade_alpha <= 0{
			alarm[0] = room_speed*logo_pause
		}
	}
	if fade_type == 1{
		fade_alpha += fade_spd
		if fade_alpha >= 1{
			logo_curr ++
			if logo_curr > array_length(logo)-1{
				menu_create()
			}
			fade_type = 0
		}
	}
	if logo_skip == true{menu_create()}
}
