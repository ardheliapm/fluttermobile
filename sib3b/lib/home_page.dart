import 'package:flutter/material.dart';
import 'my_theme.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = MyTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedNotifier Demo"),
        backgroundColor: controller.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dark Mode: ${controller.isDarkMode}",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.toggleDarkMode();
              },
              child: Text("Toggle Dark Mode"),
            )
          ],
        ),
      ),
      backgroundColor:
          controller.isDarkMode ? Colors.grey[900] : Colors.white,
    );
  }
}
