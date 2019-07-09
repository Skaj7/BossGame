if(hInput != 0 || vInput != 0){
	state = playerState.move;
	if(defenceFlag){
		state = playerState.defence;	
	}
}else{
	state = playerState.idle;	
	if(defenceFlag){
		state = playerState.idleDefence;	
	}
}

