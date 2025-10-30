
import 'tugas_homePage.dart';
import 'tugas_profilePage.dart';
import 'tugas_galleryPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title : 'Tugas Flutter Layout dan Navigasi',
      theme : ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor : Colors.pink),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':        (context) => const TugasHomePage(),
        '/profile': (context) => const TugasProfilePage(),
        '/gallery': (context) => const TugasGalleryPage(),
      },
    );
  }
}