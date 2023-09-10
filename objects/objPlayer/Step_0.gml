

playerInput();




if(ww.state == State.scroll){ playerStepScroll(); }
if(ww.state == State.useStairs){ playerStepUseStairs(); }
if(ww.state == State.play || ww.state == State.pause || ww.state == State.scroll || ww.state == State.enteringSpace || ww.state == State.leaveSpace || ww.state == State.useStairs || ww.state == State.warpWind){ playerStepPlayOrPause(); }
if(ww.state == State.play){ playerStepPlay(); }
if(ww.state == State.enteringSpace){ playerStepEnterSpace(); }
if(ww.state == State.leaveSpace){ playerStepLeaveSpace(); }








