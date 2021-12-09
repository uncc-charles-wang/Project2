/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_up)) {
	if (instance_place(x, y+1, obj_block)) {
		vspeed = jump_height
	}
	
	sprite_index = spr_player_right;
}
	
image_speed = 0;
    
if (keyboard_check(vk_left) and !instance_place(x - step_length, y - 2, obj_block)) {
		x = min(max(0 - sprite_xoffset, x - step_length), room_width);
		image_speed = 1;
		sprite_index = spr_player_left;
	} else if (keyboard_check(vk_right) and !instance_place(x + step_length, y - 2, obj_block)) {
		x = min(max(0, x + step_length), room_width + sprite_xoffset);
		image_speed = 1;
		sprite_index = spr_player_right;
	}
	
if (instance_place(x, y+1, obj_block)) {
	gravity = 0
} else {
	gravity = 1
}

if (vspeed > 12) { // Limit fall speed
	vspeed = 12
} 
