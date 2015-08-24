///scrNodeGetLowestCost(node)

var node = argument0;

var list = scrGetNodeCosts(node);

var target;
var minCost = 10000;

var l = array_length_1d(list);

for (var i = 0; i < l; i++) {
  if (list[i] < minCost || (list[i] == minCost && irandom(1) == 0)) {
    target = i;
    minCost = list[i];
  }
}

return target;
