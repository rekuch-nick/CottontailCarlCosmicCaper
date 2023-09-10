function worldPutRug(a, b){
	ww.fmap[a, b] = imgDirtRug41;
	ww.fmap[a+1, b] = imgDirtRug1;
	ww.fmap[a+2, b] = imgDirtRug12;
	ww.fmap[a, b+1] = imgDirtRug4;
	ww.fmap[a+1, b+1] = imgDirtRug;
	ww.fmap[a+2, b+1] = imgDirtRug2;
	ww.fmap[a, b+2] = imgDirtRug34;
	ww.fmap[a+1, b+2] = imgDirtRug3;
	ww.fmap[a+2, b+2] = imgDirtRug23;
}