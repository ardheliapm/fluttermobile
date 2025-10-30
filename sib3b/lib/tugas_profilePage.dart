import 'package:flutter/material.dart';

class TugasProfilePage extends StatelessWidget {
  const TugasProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 164, 184),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 187, 51, 121),
        title: Row(
          children: [
            Image.asset('assets/images/flutter.png', width: 40, height: 40),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Profil Mahasiswa',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Text('Made by Della',
                      style: TextStyle(fontSize: 12, color: Colors.white70)),
                ],
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.email, color: Colors.white),
          SizedBox(width: 8),
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 8),
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/847/847969.png',
            ),
          ),
          SizedBox(width: 12),
        ],
      ),

      //Bagian PROFIL
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // BOX PERTAMA
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFCE4C8C), Color(0xFF6C0F37)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(28),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 12,
                      offset: Offset(2, 6))
                ],
              ),
              child: Column(
                children: [
                  // Foto profil
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/847/847969.png',
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Nama dan jurusan
                  const Text(
                    'Ardhelia Putri Maharani',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Sistem Informasi Bisnis',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const SizedBox(height: 12),

                  // NIM
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.badge,
                            color: Colors.white, size: 16),
                        SizedBox(width: 6),
                        Text(
                          'NIM: 2341760124',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            
          ],
        ),
      ),
    );
  }
}
