function angleSpeed(){
	var angle = arctan2(yTar - y, xTar - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
}