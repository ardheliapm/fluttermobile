import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  final List<String> items = const [
    'Flutter',
    'Dart',
    'Firebase',
    'UI/UX',
    'API',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code, color: Colors.purple),
            title: Text(items[index]),
            onTap: () => print('Klik: ${items[index]}'),
          );
        },
      ),
    );
  }
}
