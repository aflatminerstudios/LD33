///scrSay(x, y, val)

var x1 = argument0;
var y1 = argument1;
var val = argument2;

with (objAIControl) {
  ds_list_add(sayX, x1);
  ds_list_add(sayY, y1);
  ds_list_add(sayList, val);  
}
