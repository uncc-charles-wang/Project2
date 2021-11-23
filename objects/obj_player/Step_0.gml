/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_up) && !instance_place(x, y - step_length, obj_block)) {
		y = min(max(0 - sprite_yoffset, y - step_length), room_height);
		image_speed = 1;
		sprite_index = spr_player_right;
	} else if (keyboard_check(vk_down) && !instance_place(x, y + step_length, obj_block)) {
		y = min(max(0, y + step_length), room_height + sprite_yoffset);
		image_speed = 1;
		sprite_index = spr_player_right;
	}
    
if (keyboard_check(vk_left) && !instance_place(x - step_length, y, obj_block)) {
		x = min(max(0 - sprite_xoffset, x - step_length), room_width);
		image_speed = 1;
		sprite_index = spr_player_left;
	} else if (keyboard_check(vk_right) && !instance_place(x + step_length, y, obj_block)) {
		x = min(max(0, x + step_length), room_width + sprite_xoffset);
		image_speed = 1;
		sprite_index = spr_player_right;
	}