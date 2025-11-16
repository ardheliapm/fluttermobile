import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MODEL SEDERHANA – Data dan Business Logic
class AppSettings {
  bool isDarkMode = false;
  String userName = "Teman";
  int fontSize = 20;

  Color get backgroundColor {
    return isDarkMode ? Colors.grey[900]! : Colors.white;
  }

  Color get textColor {
    return isDarkMode ? Colors.white : Colors.black;
  }

  String get greeting {
    return "Halo, $userName!";
  }
}
