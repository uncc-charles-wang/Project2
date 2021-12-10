if global.score == scoreThreshold
	hasWon = true;

if hasWon == true
	room_goto(MainMenu);
	
	if (global.time == 0) || (global.lives == 0)
		room_goto(LoseScreen);
