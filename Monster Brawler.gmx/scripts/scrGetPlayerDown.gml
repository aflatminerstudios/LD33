///scrGetPlayerDown(downKey, hAxisPad, padNum)

var downKey = argument0;
var axisPad = argument1;
var padNum = argument2;

if (keyboard_check(downKey)) {
  return 1;
}

if (gamepad_button_check(padNum, gp_padd)) {
  return 1;
}

var gpVal = gamepad_axis_value(padNum, axisPad);

if (gpVal > 0.1) {
  return gpVal;
}




return 0;