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
      ),
      body: Center(child: Text("Welcome to Della App")),
      ) 
  ,);
  }

}