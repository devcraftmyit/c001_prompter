import 'option.dart';
import 'terminal.dart';

var terminal = Terminal();

class Prompter {
  ask(String prompt, List<Options> options) {
    terminal.printPrompt(prompt);
    terminal.printOptions(options);
  }
}
