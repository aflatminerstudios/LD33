///scrGetPlayerRight(rightKey, hAxisPad, padNum)

var rightKey = argument0;
var axisPad = argument1;
var padNum = argument2;

if (keyboard_check(rightKey)) {
  return 1;
}

if (gamepad_button_check(padNum, gp_padr)) {
  return 1;
}

var gpVal = gamepad_axis_value(padNum, axisPad);

if (gpVal > 0.1) {
  return gpVal;
}

return 0;