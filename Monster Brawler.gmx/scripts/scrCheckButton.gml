///scrCheckButton(type, gamepad, button)

var type = argument0;
var gamepad = argument1;
var button = argument2;

if (type == KEYBOARD) {
  return keyboard_check_pressed(button);
} else {
  return gamepad_button_check_pressed(gamepad, button);
}
