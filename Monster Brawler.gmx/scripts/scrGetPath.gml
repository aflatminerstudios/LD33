///scrGetPath(object1, object2)

var o1 = argument0;
var o2 = argument1;

var targetX;
var targetY;
var g = ds_list_create();

if (o1.y == o2.y) {
  targetX = o2.x;
  ds_list_add(g, "MoveHorizontal", o2.x, o2.y);
} else {

}

return g;