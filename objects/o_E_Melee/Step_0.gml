if(self.cooltime_M_E > 0){
	self.cooltime_M_E -= delta_time/1000000;
}
else{
x -= 1;
self.count_e += 1;
self.cooltime_M_E = 0.1;
}
if(self.count_e >= 5) instance_destroy();