//HP Set(create)
HP = 0;
cooltime = 0;
image_xscale = image_xscale * 3;
image_yscale = image_yscale * 3;
path_start(path_Allies, 3, path_action_continue, true);

//set hp(step)
self.HP = (30 / 1.5 * 1.5 * global.upgrade_level);