_y += (keyboard_check(ord("S")) - keyboard_check(ord("W")))
hspd += (keyboard_check(ord("D")) - keyboard_check(ord("A")))

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

