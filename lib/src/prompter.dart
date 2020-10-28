import 'option.dart';
import 'terminal.dart';

final _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    _terminal.clearScreen();
    _terminal.printPrompt('$prompt Y/N');
    _terminal.printOptions([]);
    final input = _terminal.collectInput();
    return input.contains('y');
  }

  askMultiple(String prompt, List<Options> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    final input = _terminal.collectInput();
    try {
      return options[int.parse(input)].label;
    } catch (err) {
      return askMultiple(prompt, options);
    }
  }

  // retrun options[int.parse(input)];

}
