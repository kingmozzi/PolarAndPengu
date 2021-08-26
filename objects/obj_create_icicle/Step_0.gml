if(delay == 0){
	instance_create_depth(x, y, -1, obj_icicle)
	delay = irandom_range(110, 180)
}

if(delay > 0)
	delay -= 1