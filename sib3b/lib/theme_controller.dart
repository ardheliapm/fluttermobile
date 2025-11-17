import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  Color primaryColor = Colors.blue;
  bool isDarkMode = false;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;

    // warna berubah sesuai mode
    primaryColor = isDarkMode ? Colors.black : Colors.blue;

    notifyListeners(); // memberi tahu semua widget agar update
  }
}
