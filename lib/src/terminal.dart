import 'dart:io';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }
  void clearScreen(){
    if (Platform.isWindows) {
stdout.write('\x1B[2j\x1B[0f');
    } else { 

    }
  }
}
