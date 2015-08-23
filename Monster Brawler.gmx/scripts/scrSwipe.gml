///scrSwipe(player, actionVars)

var player = argument0;
var a = argument1;

var o = instance_create(0, 0, objSwipe);

o.parent = player.id;

//Setup variables
o.damage = ds_map_find_value(a, "damage");
o.knockback = ds_map_find_value(a, "knockback");
o.xSize = ds_map_find_value(a, "xSize");
o.ySize = ds_map_find_value(a, "ySize");
o.xTotalSize = ds_map_find_value(a, "xTotalSize");
o.yTotalSize = ds_map_find_value(a, "yTotalSize");
o.xDist = ds_map_find_value(a, "xDist");
o.yDist = ds_map_find_value(a, "yDist");
o.angle = ds_map_find_value(a, "angle");
o.numFrames = ds_map_find_value(a, "numFrames");
o.alarm[0] = o.numFrames;
