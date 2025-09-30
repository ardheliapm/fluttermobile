
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tugas.dart'; // import file tugas.dart



void main() {
  runApp(DellaApp());
}

class DellaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Della App",
      debugShowCheckedModeBanner: false,
      home: LyricsPage(), // langsung buka halaman lirik
    );
  }
}
