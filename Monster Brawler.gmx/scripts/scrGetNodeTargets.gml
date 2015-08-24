///scrGetNodeCosts(node)

//

var node = argument0;
var list;
var i = 0;

for (i = 0; i < array_length_1d(node.indices); i++) {
  list[0,1] = node.indices[i];
  list[0,2] = node.costs[i];
}

return list;

