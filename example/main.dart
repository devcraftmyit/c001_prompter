import 'package:prompter_rt/prompter_rt.dart';

void main() {
  var options = [
    new Options('I want the color red', '#f00'),
    new Options('I want the color blue', '#00f')
  ];
  final prompter = Prompter();
  print (prompter.askBinary('Do you like Dart'));
}
