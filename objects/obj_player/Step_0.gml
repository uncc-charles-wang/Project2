/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_up)) {
	var block_below = false
	var block_above = false
	if (instance_place(x, y+1, obj_block)) {
		block_below = true
	}
	if (instance_place(x, y-1, obj_block)) {
		block_above = true
	}
	if (block_below == true && block_above == false) {
		vspeed = jump_height
	}
	
}
	
image_speed = 1
sprite_index = spr_player_idle
    
if (keyboard_check(vk_left) and !instance_place(x - step_length, y, obj_block)) {
		x = min(max(0 - sprite_xoffset, x - step_length), room_width);
		image_speed = 1
		sprite_index = spr_player_run
		image_xscale = -1
	} else if (keyboard_check(vk_right) and !instance_place(x + step_length, y, obj_block)) {
		x = min(max(0, x + step_length), room_width + sprite_xoffset);
		image_speed = 1
		sprite_index = spr_player_run
		image_xscale = 1
	}
	
if (instance_place(x, y+1, obj_block)) {
	gravity = 0
	
} else {
	gravity = 1
}

if (vspeed > 12) { // Limit fall speed
	vspeed = 12
} 

