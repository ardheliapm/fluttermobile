import 'package:flutter/material.dart';

void main() {
  runApp(const GantiWarnaApp());
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});

  @override
  State<GantiWarnaApp> createState() => _GantiWarnaAppState();
}

class _GantiWarnaAppState extends State<GantiWarnaApp> {
  bool _isBlue = true; // state untuk menentukan warna & teks

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue; // ubah nilai state
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganti Warna App'),
          backgroundColor: _isBlue ? Colors.blue : Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? 'Warna Sekarang: Biru' : 'Warna Sekarang: Merah',
                style: TextStyle(
                  fontSize: 20,
                  color: _isBlue ? Colors.blue : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.red,
                ),
                child: const Text(
                  'Ubah Warna',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
