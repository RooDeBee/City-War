//variables
	//money
	money_E += time_E * (0.75 * farm_E) * 30;
	//farm
	while(global.Fail = 1 or global.Victory = 1){
		if(farm_E <20){
			k = irandom_range(25, 75);
			k -= delta_time/1000000;
			if(k<=0){
			farm_E += 1;
		}
		}
		else if(farm_E = 20){
			farm_E = 20;
		}
	}
	//upgrade_level
	while(global.upgrade_level_E = 3){
		if(global.upgrade_level_E < 3){	
		}
		else if(global.upgrade_level_E = 3){
			global.upgrade_level_E  += 1;
		}
	}
	
	
	//create Unit
	while(global.Fail = 1 or global.Victory = 1){
		j = irandom_range(5, 11)
		if(j <= 0){
			l = irandom_range(0, 10)
			if(0<= l <= 2){
				instance_create_depth(o_E_Mind.x, 570, 610, o_E_S_Unit_1);
			}
			if( l = 3){
				instance_create_depth(o_E_Mind.x, 570, 610, o_E_S_Unit_2);
			}
			if(4<= l <= 5){
					instance_create_depth(o_E_Mind.x, 570, 610, o_E_L_Unit_1);	
			}
			if( l = 6){
				instance_create_depth(o_E_Mind.x, 570, 610, o_E_L_Unit_2);
			}
			if( 7<= l <= 8){
				instance_create_depth(o_E_Mind.x, 570, 610, o_E_T_Unit_1);
			}
			if( l = 9 or l = 10){
				instance_create_depth(o_E_Mind.x, 570, 610, o_E_T_Unit_2);
			}
		}
				j -= delta_time/10000;
	}
	//build the building
	while(global.Fail = 1 or global.Victory = 1){
			if(Building_Builded_E == 0){
			o = irandom_range(25, 50);
			o -= delta_time/1000000;
				if(o <= 0){
					var ultia = irandom_range( 0, 5)
					switch(ultia){
						case(0):
						case(1): instance_create_depth(o_E_Mind.x-200, 570, 610, o_E_Trap_1); break;
						case(2): instance_create_depth(o_E_Mind.x-200, 570, 610, o_E_Trap_2); break;
						case(3): instance_create_depth(o_E_Mind.x-200, 570, 610, o_E_Trap_3); break;
						case(4):
						case(5): instance_create_depth(o_E_Mind.x-200, 570, 610, o_E_Wall); break;
					}
				}
			}
			if(Building_Builded_E == 1){
			}
	}