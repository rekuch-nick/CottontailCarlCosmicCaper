if(ww.state != State.surfGame){ return; }

x += xSpeed;
y += ySpeed;

if(irandom_range(0, 99) < gravChance){ ySpeed ++; }

if(irandom_range(0, 99) < jumpChance){ ySpeed = jumpPow; }