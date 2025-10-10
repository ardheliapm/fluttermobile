import 'package:flutter/material.dart';

void main() {
  runApp(const DellaApp());
}

class DellaApp extends StatelessWidget {
  const DellaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Della App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 187, 51, 121),
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 40,
                height: 40,
              ),
              //const Icon(Icons.account_circle, size: 40, color: Colors.white),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Flutternya Della',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const Text(
                      'Della App',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    const SizedBox(height: 6),
                    // Image.asset(
                    //   'assets/images/logo.png',
                    //   width: 35,
                    //   height: 35,
                    // ),
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.settings, color: Colors.white),
            SizedBox(width: 8),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 224, 164, 184),

        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          height: 250,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 187, 51, 121),
                Color.fromARGB(255, 95, 12, 37),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 255, 254, 254),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),
                  Icon(Icons.star_border, color: Colors.amber),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  debugPrint("Tombol di bawah Row ditekan!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 249, 219, 235),
                ),
                child: const Text('Press Me'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("TextButton ditekan!");
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text('Text Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint("OutlinedButton ditekan!");
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Outlined Button'),
              ),
              IconButton(
                onPressed: () {
                  debugPrint("IconButton ditekan!");
                },
                icon: const Icon(Icons.favorite, color: Colors.white),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 51, 121),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 232, 232),
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),

        bottomNavigationBar:  BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}
