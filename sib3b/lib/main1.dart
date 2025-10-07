import 'package:flutter/material.dart';

void main() {

  runApp( DellaApp());
}

class DellaApp extends StatelessWidget {
  @override
  Widget build(BuildContext cotext) {
    return MaterialApp( 
    title: "Della App", //luar aplikasi
    home: Scaffold( //satu layar
      appBar: AppBar( title: Text("Della App", 
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Times New Roman',
      ),),
      backgroundColor: Colors.pink,
      centerTitle: true,
      foregroundColor: Colors.white,
      //leading: const Icon(Icons.menu),
      actions: const[
        Icon(Icons.search),
        SizedBox(width: 10),
        Icon(Icons.more_vert),
        SizedBox(width: 10),
        Icon(Icons.settings)
      ],
      ),
      body: Center(child: Text("Welcome to Della App")),
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
              color: Colors.white,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.pink,
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
          title: Text('Settings'),)
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
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