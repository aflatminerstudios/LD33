///scrKill(object, killer)

var object = argument0;
var killer = argument1;

with (objGameControl) {
  numPlayers--;
}

with (object) {
  instance_destroy();
}
