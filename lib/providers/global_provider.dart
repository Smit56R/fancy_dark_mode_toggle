import 'package:flutter/foundation.dart';

class GlobalProvider with ChangeNotifier {
  bool _darkMode = false;

  bool get darkMode => _darkMode;

  void toggleDarkMode(bool value) {
    _darkMode = value;
    notifyListeners();
  }
}
