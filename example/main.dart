import 'package:prompter_rt/src/terminal.dart';
import 'package:prompter_rt/src/option.dart';

void main() {
  var terminal = Terminal();
  var options = [
    new Options('I want the color red', '#f00'),
    new Options('I want the color blue', '#00f')
  ];
  terminal.printOptions(options);
  var response = terminal.collectInput();
  print(response);
}
