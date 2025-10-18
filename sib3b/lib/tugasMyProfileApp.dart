import 'package:flutter/material.dart';
import 'package:sib3b/counter.dart';

void main() {
  runApp(const DellaApp());
}

class DellaApp extends StatelessWidget {
  const DellaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      debugShowCheckedModeBanner: false,

      // 🔹 Tambahkan routes di sini
      routes: {
        '/': (_) => const HomePage(),       // Halaman utama (profil)
        '/counter': (_) => const CounterPage(), // Halaman counter
      },
      initialRoute: '/', // halaman awal
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _counter = 0;

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


        body: const ProfilePagePink(),

      

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 187, 51, 121),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 232, 232, 232),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.account_circle), title: Text('Profil')),
            ListTile(leading: Icon(Icons.calculate), title: Text('Counter')),
          ],
        ),
      ),

bottomNavigationBar: BottomNavigationBar(
  currentIndex: 0, // halaman ini selalu 'Profil'
  onTap: (i) {
    if (i == 1) {
      Navigator.pushNamed(context, '/counter'); // ke counter.dart
    }
  },
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
    BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Counter'),
        ],    
      ),
    );
  }
}

/// ================= PROFILE PAGE (tema pink) =================
class ProfilePagePink extends StatelessWidget {
  const ProfilePagePink({super.key});

  @override
  Widget build(BuildContext context) {
    const name = 'Ardhelia Putri Maharani';
    const major = 'Sistem Informasi Bisnis';
    const nim = '2341760124';
    const avatarUrl =
        'https://cdn-icons-png.flaticon.com/512/847/847969.png';

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header kartu dengan gradient pink
          Container(
            padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFCE4C8C), Color(0xFF6C0F37)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x33FFFFFF),
                  blurRadius: 18,
                  spreadRadius: 2,
                  offset: Offset(-3, -3),
                ),
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 18,
                  spreadRadius: 2,
                  offset: Offset(3, 6),
                ),
              ],
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.white.withOpacity(.25),
                  backgroundImage: const NetworkImage(avatarUrl),
                ),
                const SizedBox(height: 14),
                const Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                const Text(
                  major,
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.15),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.badge, size: 16, color: Colors.white),
                      SizedBox(width: 6),
                      Text('NIM: $nim', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // Info tiles
          const _InfoTile(
            icon: Icons.email,
            title: 'Email',
            value: 'ardhelia@polinema.ac.id',
          ),
          const _InfoTile(
            icon: Icons.call,
            title: 'Mobile',
            value: '+62 812-3456-7891',
          ),
          const _InfoTile(
            icon: Icons.school,
            title: 'Program Studi',
            value: major,
          ),
          const _InfoTile(
            icon: Icons.location_on,
            title: 'Kampus',
            value: 'Politeknik Negeri Malang',
          ),
          const _InfoTile(
            icon: Icons.web,
            title: 'Portofolio',
            value: 'behance.net/ardhelia',
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const _InfoTile({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE3EE),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0x33C2185B)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFCE4C8C),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFF6B6B6B))),
                const SizedBox(height: 2),
                Text(value,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0x806B6B6B)),
        ],
      ),
    );
  }
}



