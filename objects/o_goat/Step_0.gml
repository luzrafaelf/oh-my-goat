if(dead){
	if(keyboard_check_pressed(vk_enter)){
		if global.points > global.highscore
			global.highscore = global.points
		room_restart()	
	}
}

if(!dead){
	
	if(y > room_height){
		dead = true		
	}

	var _hawk = instance_place(x,y,o_marker_bad)
	if _hawk != noone {
		falling = false
		with(_hawk){
			instance_destroy()	
		}
		global.points = ceil(global.points * 0.5)
	}

	var _coin = instance_place(x,y,o_marker_good)
	if _coin != noone {
		with(_coin){
			instance_destroy()	
		}
		global.points++
	}

	if(falling){
		sprite_index = s_goat_falling
		y+=config_down_speed
	}else{
		sprite_index = s_goat_jumping
		y-=config_up_speed
	
		falling_bounce_time_count++
		if(falling_bounce_time_count > falling_bounce_time_config){
			falling = true
			falling_bounce_time_count = 0
		}
	}

	if(mouse_x > x){
		image_xscale = 1	
	}else if(mouse_y < mouse_y){
		image_xscale = -1
	}

	if(mouse_x > 16 && mouse_x < room_width - 16){
		x = mouse_x
	}

	layer_y(layer_get_id("back_sky_layer"),y)
}