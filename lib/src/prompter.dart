import 'option.dart';
import 'terminal.dart';

class Prompter {
  ask(String prompt, List<Options> options) {
    var terminal = Terminal();
    terminal.printPrompt(prompt);
    terminal.printOptions(options);
  }
}
