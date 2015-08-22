///scrGetEnemyList()

var list;
var i = 0;

var sid = self.id;

with (objCostume) {
  if (self.id != sid) {
    list[i] = self.id;
    i++;
  }
}

return list;
