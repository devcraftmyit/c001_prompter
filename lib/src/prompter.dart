import 'option.dart';
import 'terminal.dart';

final _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    final input = ask('$prompt Y/N', []);
    return input.contains('y');
  }

  askMultiple(String prompt, List<Options> options) {
    final input = ask(prompt, options);
    try {
      return options[int.parse(input)].label;
    } catch (err) {
      return askMultiple(prompt, options);
    }
  }

  String ask(String prompt, List<Options> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    return _terminal.collectInput();
  }

  // retrun options[int.parse(input)];

}
