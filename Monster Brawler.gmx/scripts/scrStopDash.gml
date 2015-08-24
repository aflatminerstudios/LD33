///scrStopDash(player, actionVars)

var player = argument0;
var a = argument1;

with (objDash) {
  if (parent.id = player.id) {
    alarm[0] = 1;
  }
}

var p = player;
if (player.costume != noone) {
  p = player.costume;
}

script_execute(p.doAction1, player, p.action1);