///scrKill(object, killer)

var object = argument0;
var killer = argument1;

with (objGameControl) {
  numPlayers--;
}

audio_play_sound(sndPlayerDeath, 1, false);

with (object) {
  instance_destroy();
}
