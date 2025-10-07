import 'package:flutter/material.dart';

void main() {

  runApp( DellaApp());
}

class DellaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
    title: "Della App", //luar aplikasi
    home: Scaffold( //satu layar
      appBar: AppBar( 
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Text('Flutternya Della', style: TextStyle(fontSize:24)),
            Text('Della App', style: TextStyle(fontSize:14)),
          ],
        ),
      centerTitle: false,
      foregroundColor: const Color.fromARGB(255, 232, 67, 133),
      actions: const[
        Icon(Icons.search),
        SizedBox(width: 10),
        Icon(Icons.more_vert),
        SizedBox(width: 10),
        Icon(Icons.settings)
      ],
    ),
    backgroundColor: const Color.fromARGB(255, 224, 164, 184),
    body: Center(child: Text("Welcome to Della App", style: TextStyle(fontSize: 20,color: Colors.white))),  
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),  
      //leading: const Icon(Icons.menu)
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 187, 51, 121)),
            child: const Text(
              'Drawer Header',
              style: TextStyle(
                color: Color.fromARGB(255, 232, 232, 232),
                fontSize: 24),
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
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School'
        ),
      ],
    ),
  ),
  
);
  
  }

}