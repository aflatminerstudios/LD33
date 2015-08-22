///scrGetEnemyList

var list;

var i = 0;

with (objCostume) {
  if (x != -500) {
    list[i] = self.id;
    i++;
  }
}

return list;
