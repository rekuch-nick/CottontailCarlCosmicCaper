

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






blockInput = false;

