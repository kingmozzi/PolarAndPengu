_y += (keyboard_check(vk_down) - keyboard_check(vk_up))
hspd += (keyboard_check(vk_right) - keyboard_check(vk_left))

while(place_meeting(x+hspd, y, obj_obstacle)) {
	hspd -= hspd/2
}
while(place_meeting(x+hspd, y, obj_move_wall)) {
	hspd -= hspd/2
}

x += hspd
hspd *= 0.9

while(place_meeting(x,y+_y,obj_obstacle)){
	_y -= _y/2
}
while(place_meeting(x,y+_y,obj_move_wall)){
	_y -= _y/2
}

y += _y
_y *=0.9

/*
if(global.catch == 1){
	if(place_meeting(obj_move_wall.x + 3,obj_move_wall.y, obj_chr_peng_top))
		obj_move_wall.x +=1
	if(place_meeting(obj_move_wall.x - 3, obj_move_wall.y, obj_chr_peng_top))
		obj_move_wall.x -= 1
	if(place_meeting(obj_move_wall.x,obj_move_wall.y + 3, obj_chr_peng_top))
		obj_move_wall.y += 1
	if(place_meeting(obj_move_wall.x,obj_move_wall.y - 3, obj_chr_peng_top))
		obj_move_wall.y -= 1
}