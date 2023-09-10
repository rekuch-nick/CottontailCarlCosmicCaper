function arrayDropFirst(arr){
	
	var arr2 = [];
	
	for(var i=1; i<array_length(arr); i++){
		arr2[i - 1] = arr[i];
	}
	
	arr = arr2;
	
	return arr2;
}