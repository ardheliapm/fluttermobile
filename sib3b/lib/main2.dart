import 'package:flutter/material.dart';

void main() {
  runApp( const DellaApp());
}

class DellaApp extends StatelessWidget {
  const DellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Della App',
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutternya Della')),
      body: Text('Hello World', style: TextStyle(fontSize: 24)),

    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  ),
    );
    
  }

}
      


    


    



    
    

