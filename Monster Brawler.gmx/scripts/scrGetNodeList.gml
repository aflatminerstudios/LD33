///scrGetEnemyList()

var list;
list[0] = noone;
var i = 0;

var sid = self.id;

with (objNavNode) {  
  list[i] = self.id;
  i++;
}

return list;