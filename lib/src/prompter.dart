import 'option.dart';
import 'terminal.dart';

final terminal = Terminal();

class Prompter {
  ask(String prompt, List<Options> options) {
    terminal.printPrompt(prompt);
    terminal.printOptions(options);
  }
}
