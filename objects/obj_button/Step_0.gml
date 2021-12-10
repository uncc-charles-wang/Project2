/// @description Insert description here
// You can write your code in this editor
var _hover = buttonHoverDetect();
var _click = _hover && mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if (_click) {
	
	var room_index = 0
	
	while(Next_room != room_get_name(room_index)) {
		room_index++
	}
	
	room_goto(room_index)
	
}