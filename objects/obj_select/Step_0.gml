if(keyboard_check(vk_enter) == 1){
	if(y == _Y){
		room_goto_next()
	}
	else
		game_end()
}