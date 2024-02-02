event_inherited();

pow = 25;

do {
	xTar = irandom_range(0, ww.roomWidth - 1);
	yTar = irandom_range(0, room_height - 1);
} until (xTar != x || yTar != y);
