if(timer <= 1 && alarm[0] == -1)
{
    alarm[0] = room_speed;
    timer = 0;
}

if global.score == scoreThreshold
	hasWon = true;

if hasWon == true
	room_goto(WinScreen);
	
	if (global.time == 0) || (global.lives == 0)
		room_goto(LoseScreen);
