/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_up)) {
	if (instance_place(x, y+1, obj_block)) {
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

if (keyboard_check(vk_space)) { // Take picture
	// play sound effect
	
	audio_play_sound(spr_camera, 0, false)
	
	// check to see if there is correct object
}


