import 'package:flutter/material.dart';
import 'theme_controller.dart';

class MyTheme extends InheritedNotifier<ThemeController> {
  const MyTheme({
    super.key,
    required ThemeController controller,
    required super.child,
  }) : super(notifier: controller);

  static ThemeController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MyTheme>()!
        .notifier!;
  }
}
