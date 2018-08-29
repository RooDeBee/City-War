//pause
if(global.Pause == 1){
	exit;
	self.path_speed = 0;
}


//move and attack
if(place_meeting( x+64 , y, o_E_Units)){
	self.path_speed = 0;
}
else{
	self.path_speed = 3;
}

//dead
if(self.HP <= 0){
	//if i can, insert here the animation when character dead.
	instance_destroy();
}
//damage
	//bullet damage
	if(place_meeting( self.x, self.y, o_E_Bullet)) {
		self.HP -= 3;
	}
	//melee damage
	if(place_meeting( self.x, self.y, o_E_Melee)) {
		self.HP -= 5;
	}
	//Trap meet
	if(place_meeting( self.x, self.y, o_E_Buildings)){
		instance_destroy();
	}