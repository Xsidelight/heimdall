import 'dart:convert';
import 'dart:io';

import 'commands/commands.dart';
import 'constants/constants.dart';

class Heimdall {
  final _command = Command();

  void userInput() async {
    String? input = stdin.readLineSync();

    if (input != null && input.startsWith(heimdall)) {
      var restString = input.split(' ');
      if (requestTypes.contains(restString[1])) {
        switch (restString[1]) {
          case 'GET':
            _command.getHttp(restString[2]);
            break;
          case 'POST':
            _command.postHttp(
              restString[2],
              json.decode(restString[3]),
            );
            break;
          case 'PUT':
            _command.putHttp(
              restString[2],
              json.decode(restString[3]),
            );
            break;
          case 'PATCH':
            _command.patchHttp(
              restString[2],
              restString.length == 4 ? json.decode(restString[3]) : null,
            );
            break;
          case 'DELETE':
            _command.deleteHttp(
              restString[2],
              restString.length == 4 ? json.decode(restString[3]) : null,
            );
            break;
          default:
            userManual();
            break;
        }
      }
    } else {
      userManual();
      exit(2);
    }
  }

  void userManual() {
    print('\n\x1B[33mList of the commands: \n\n - heimdall GET [url] \n - heimdall POST [url, data]\x1B[0m');
  }
}
