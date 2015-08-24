///scrGetDistance(x1, y1, x2, y2)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;


var xD = x2 - x1;
var yD = y2 - y1;

return sqrt(xD * xD + yD * yD);
