import 'package:flutter/material.dart';

class TugasProfilePage extends StatelessWidget {
  const TugasProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: tambahkan AppBar di sini

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
                  SizedBox(height: 6),
                ],
              ),
            ),
          ],
        ),
        actions: [
          // 1) Email
          IconButton(
            icon: const Icon(Icons.email, color: Colors.white),
            onPressed: () {},
          ),
          const SizedBox(width: 8),

          // 2) Telepon
          IconButton(
            icon: const Icon(Icons.call, color: Colors.white),
            onPressed: () {},
          ),
          const SizedBox(width: 8),

          // 3) Avatar + dropdown info
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: PopupMenuButton<int>(
              offset: const Offset(0, 8),
              child: const CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/847/847969.png',
                ),
              ),
              itemBuilder: (context) => const [
                PopupMenuItem<int>(
                  enabled: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ardhelia Putri Maharani',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      SizedBox(height: 4),
                      Text('NIM: 2341760124',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}