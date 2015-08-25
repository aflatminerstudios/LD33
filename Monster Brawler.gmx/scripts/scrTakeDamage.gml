///scrTakeDamage(attacker, receiver, amount)

var attacker = argument0;
var receiver = argument1;
var amount = argument2;

audio_play_sound(sndPlayerHit, 1, false);

with (receiver) {

  hp -= amount;
  instance_create(x,y, objDamageIndicator);
  
  if (hp <= 0) {
    scrKill(receiver, attacker);
  }

}

with (objGameControl) {
  if (numPlayers == 1) {    
    var winner;
    with (objPlayer) {
      other.winner = self.playerNum;
     
    }
    with (objGameControl) {
      win = other.winner
      alarm[2] = room_speed / 1.5;
    }
  }
}
