import 'package:flutter/foundation.dart';

class DarkThemeModel with ChangeNotifier {
  bool _darkTheme = true;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}
