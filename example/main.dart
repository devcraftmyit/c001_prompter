import 'package:prompter_rt/src/terminal.dart';

void main() {
  var terminal = Terminal();
  terminal.clearScreen();
  terminal.printPrompt('Hi There');
}
