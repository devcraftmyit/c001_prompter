import 'option.dart';
import 'terminal.dart';

final _terminal = const Terminal();

class Prompter {
  ask(String prompt, List<Options> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    final input = _terminal.collectInput();
    try {
      return options[int.parse(input)].label;
    } catch (err) {
      return ask(prompt, options);
    }
  }

  // retrun options[int.parse(input)];

}
