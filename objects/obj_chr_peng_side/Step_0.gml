hspd += (keyboard_check(vk_right) - keyboard_check(vk_left))

while(place_meeting(x+hspd, y, obj_obstacle)) {
	hspd -= hspd/2
}
while(place_meeting(x+hspd, y, obj_move_wall)) {
	hspd -= hspd/2
}
x += hspd
hspd *= 0.9

vspd += _gravity

while(place_meeting(x, y+vspd, obj_obstacle)) {
	vspd -= vspd/2
}
while(place_meeting(x, y+vspd, obj_move_wall)) {
	vspd -= vspd/2
}
y += vspd

if(keyboard_check(vk_up)) {
	if(place_meeting(x, y+1, obj_obstacle)) {
		vspd = jumpspd
	}
	else if(place_meeting(x, y+1, obj_move_wall)){
		vspd = jumpspd
	}
}