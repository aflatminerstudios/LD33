///scrGetEnemyList

var list;
list[0] = noone;
var i = 0;

with (objCostume) {
  if (x != -500) {
    list[i] = self.id;
    i++;
  }
}

return list;