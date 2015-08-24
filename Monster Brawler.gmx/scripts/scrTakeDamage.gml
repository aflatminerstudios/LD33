///scrTakeDamage(attacker, receiver, amount)

var attacker = argument0;
var receiver = argument1;
var amount = argument2;

audio_play_sound(sndPlayerHit, 1, false);

with (receiver) {

  hp -= amount;
  
  if (hp <= 0) {
    scrKill(receiver, attacker);
  }

}

with (objGameControl) {
  if (numPlayers == 1) {
    with (objPlayer) {
      scrWinGame(self.id);
    }
  }
}