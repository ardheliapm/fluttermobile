import 'package:flutter/material.dart';

class TugasHomePage extends StatelessWidget {
  const TugasHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 187, 51, 121),
        title: const Text('Home')),
      body: Center(
    
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              // TODO: nanti arahkan ke halaman profil
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: const Text('Ke Profil'),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/gallery'),
              child: const Text('Ke Galeri'),
            ),
          ],
        ),
      ),
    );
  }
}
