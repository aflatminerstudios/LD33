///scrTakeDamage(attacker, receiver, amount)

var attacker = argument0;
var receiver = argument1;
var amount = argument2;

with (receiver) {

  hp -= amount;
  
  if (hp <= 0) {
    scrKill(receiver, attacker);
  }

}