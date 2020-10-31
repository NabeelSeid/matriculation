import 'package:flutter/foundation.dart';

//TODO change this to setting model
class DarkThemeModel with ChangeNotifier {
  bool _darkTheme = true;
  bool _showAnswer = false;

  bool get darkTheme => _darkTheme;
  bool get showAnswer => _showAnswer;

  set darkTheme(bool value) {
    _darkTheme = value;
    //TODO persist value to db
    notifyListeners();
  }

  set showAnswer(bool value) {
    _showAnswer = value;
    //TODO persist value to db
    notifyListeners();
  }
}
