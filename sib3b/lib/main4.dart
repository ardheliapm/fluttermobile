import 'package:flutter/material.dart';
import 'my_theme.dart';
import 'theme_controller.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controller = ThemeController();

  @override
  Widget build(BuildContext context) {
    return MyTheme(
      controller: controller,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
