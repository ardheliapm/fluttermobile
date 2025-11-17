import 'package:flutter/material.dart';
import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTheme(
      primaryColor: Colors.blue,
      isDarkMode: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ambil data inheritedwidget
    final theme = MyTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("InheritedWidget Demo"),
        backgroundColor: theme.primaryColor,
      ),
      body: Center(
        child: Text(
          "Dark Mode: ${theme.isDarkMode}",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
