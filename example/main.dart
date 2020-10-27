import 'package:prompter_rt/src/option.dart';
import 'package:prompter_rt/src/prompter.dart';

void main() {
  var options = [
    new Options('I want the color red', '#f00'),
    new Options('I want the color blue', '#00f')
  ];
  final prompter = Prompter();
  final usersPick = prompter.askMultiple('what color would you like', options);
  print(usersPick);
}
