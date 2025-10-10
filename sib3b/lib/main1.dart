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
          title: Row(
            children: const [
              Icon(Icons.account_circle, size: 40, color: Colors.white),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutternya Della',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      'Della App',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 187, 51, 121),
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
          //color: const Color.fromARGB(255, 60, 19, 32),
          height: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 187, 51, 121),
                Color.fromARGB(255, 95, 12, 37),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            //color: const Color.fromARGB(255, 95, 12, 37),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 255, 254, 254),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star_half, color: Colors.amber),
                    Icon(Icons.star_border, color: Colors.amber),
                  ],
                ),
              ],
            ),
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
            children: const <Widget>[
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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
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
