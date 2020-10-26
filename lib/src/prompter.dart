import 'option.dart';
import 'terminal.dart';

final _terminal = const Terminal();

class Prompter {
  ask(String prompt, List<Options> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    final input = _terminal.collectInput();

    return options[int.parse(input)].label;
  }

  // retrun options[int.parse(input)];

}
