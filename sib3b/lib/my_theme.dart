import 'package:flutter/material.dart';

class MyTheme extends InheritedWidget {
  final Color primaryColor;
  final bool isDarkMode;

  const MyTheme({
    super.key,
    required this.primaryColor,
    required this.isDarkMode,
    required super.child,
  });

  static MyTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyTheme>()!;
  }

  @override
  bool updateShouldNotify(MyTheme oldWidget) {
    return primaryColor != oldWidget.primaryColor ||
           isDarkMode != oldWidget.isDarkMode;
  }
}
