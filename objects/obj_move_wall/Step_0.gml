_Dir = point_direction(x, y, obj_chr_peng_top.x, obj_chr_peng_top.y)
_X = lengthdir_x(2, _Dir)
_Y = lengthdir_y(2, _Dir)

if(follow == 1){
	if(distance_to_object(obj_chr_peng_top) <= 16){
		if(!place_meeting(x+_X, y+_Y, obj_move_wall))
		if(!place_meeting(x+_X, y+_Y, obj_obstacle)) 
		{
			x += _X
			y += _Y
		}
	}
}

_Dir2 = point_direction(obj_chr_bear_top.x, obj_chr_bear_top.y, x, y)
_X2 = lengthdir_x(1, _Dir2)
_Y2 = lengthdir_y(1, _Dir2)

if(push == 1){
	if(distance_to_object(obj_chr_bear_top) <= 1){
		if(!place_meeting(x+_X2, y+_Y2, obj_move_wall))
		if(!place_meeting(x+_X2, y+_Y2, obj_obstacle))
		{
			x+=_X2
			y+=_Y2
		}
	}
}

