event_inherited();

//offChdriftChanceance = 20;
passWall = true;

timeCD = 30;
do {
	xTar = irandom_range(0, ww.roomWidth - 1);
	yTar = irandom_range(0, room_height - 1);
} until (xTar != x || yTar != y);
