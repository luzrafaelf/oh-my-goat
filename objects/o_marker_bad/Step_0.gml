if(right){
	x+=config_speed_horizontal	
}else{
	x-=config_speed_horizontal	
}

if( right &&  x > room_width - 16){
	right = false	
}

if (!right && x < 16){
	right = true	
}

image_xscale = right ? -1 : 1