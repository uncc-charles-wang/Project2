if keyboard_check_released(ord("Z")) && other.hasScored == false
{
	global.score += 100;
	other.hasScored = true;	
}