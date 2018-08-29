//pause
if(global.Pause == 1){
	exit;
	self.path_speed = 0;
}

//cooltime set
if(self.cooltime > 0) self.cooltime -= delta_time/1000000;
else self.cooltime = 0;

//move and attack
if(place_meeting( x+65 , y, o_E_Units)){
	self.path_speed = 0;
	//attack
	if(self.cooltime = 0){
		instance_create_depth( x+65, y, 500, o_A_Melee);
		self.cooltime = 0.7;
	}
}
else{
	self.path_speed = 5;
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