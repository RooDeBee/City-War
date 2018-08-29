//pause
if(global.Pause == 1){
	self.path_speed = 0;
	exit;
}


//move and attack
if(place_meeting( x , y, o_A_Units)){
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
	if(place_meeting( self.x, self.y, o_A_Bullet)) {
		self.HP -= 3;
}
	//melee damage
	if(place_meeting(self.x , self.y ,o_A_Melee)) {
		self.HP -= 5
	}
	//Trap meet
	if(place_meeting( o_A_Building.x, o_A_Building.y, self)){
		instance_destroy();
	}