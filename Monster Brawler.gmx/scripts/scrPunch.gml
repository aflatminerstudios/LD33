///scrPunch(player, actionVars)

var player = argument0;
var a = argument1;

var o = instance_create(0, 0, objPunch);

o.parent = player.id;

//Setup variables
o.damage = a.damage;
o.scriptCall = a.scriptCall;
o.scriptParams = a.scriptParams;
o.knockback = a.knockback;
o.xSize = a.xSize;
o.ySize = a.ySize;
o.xDist = a.xDist;
o.yDist = a.yDist;
o.angle = a.angle;

o.alarm[0] = a.numFrames;
