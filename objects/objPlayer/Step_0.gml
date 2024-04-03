
frames ++;
if(frames > 60 * 1){ frames = 0; }

playerInput();

if(fullHealing || pc.debug){
	hp = clamp(hp + 1, 0, hpMax);
	mp = clamp(mp + 1, 0, mpMax);
	if(hp == hpMax && mp == mpMax){ fullHealing = false; }
}
if(healingC1){
	hp = clamp(hp + 1, 0, hpMax);
	if(hp >= hpMax / 2){ healingC1 = false; }
}
if(healingC2){
	if(hp < hpMax / 2){ hp = clamp(hp + 1, 0, hpMax); }
	mp = clamp(mp + 1, 0, mpMax);
	if(hp >= hpMax / 2 && mp >= mpMax){ healingC2 = false; }
}
if(healingHP > 0){
	healingHP --;
	hp = clamp(hp + 1, 0, hpMax);
}
if(healingMP > 0){
	healingMP --;
	mp = clamp(mp + 1, 0, mpMax);
}

if(ww.state == State.win){ return; }
if(ww.state == State.title){ playerStepTitle(); return; }
if(ww.state == State.rocketing){ playerStepRocket(); }
if(ww.state == State.birdRez){ playerStepBirdRez(); }
if(ww.state == State.scroll){ playerStepScroll(); }
if(ww.state == State.useStairs){ playerStepUseStairs(); }
if(ww.state == State.play || ww.state == State.pause || ww.state == State.scroll || ww.state == State.enteringSpace || ww.state == State.leaveSpace || ww.state == State.useStairs || ww.state == State.warpWind || ww.state == State.inventory){ playerStepPlayOrPause(); }
if(ww.state == State.play){ playerStepPlay(); }
if(ww.state == State.inventory){ playerStepInventory(); }
if(ww.state == State.enteringSpace){ playerStepEnterSpace(); }
if(ww.state == State.leaveSpace){ playerStepLeaveSpace(); }
if(ww.state == State.dying){ playerStepDying(); }
if(ww.state == State.surfStart){ playerStepSurfStarting(); }
if(ww.state == State.surfGame){ playerStepSurf(); }
if(ww.state == State.birdScene){ playerStepBirdScene(); }
if(ww.state == State.digStart){ playerStepDigStarting(); }
if(ww.state == State.digGame){ playerStepDig(); }
if(ww.state == State.jumpStart){ playerStepJumpGameStarting(); }
if(ww.state == State.jumpGame){ playerStepJumpGame(); }





blockInput = false;

