import 'package:prompter_rt/prompter_rt.dart';

void main() {
  var options = [
    new Options('I want the color red', '#f00'),
    new Options('I want the color blue', '#00f')
  ];
  final prompter = Prompter();
  String colorCode = prompter.askMultiple('Select an Option', options);
  bool answer = prompter.askBinary('Do you Like this Library');
  print(colorCode);
  print(answer);
}
