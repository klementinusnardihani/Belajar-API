import 'package:flutter/material.dart';

import './screen_home.dart';
import './screen_tmb_data.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.white,

      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: IconButton(
          icon : Icon(Icons.add),
          color: Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TambahScreen(),
              ));
          },
        ), onPressed: () {
          
        },
      ),
      appBar: AppBar(
        title: Text(
          "Daftar Anggota",
        ),
        centerTitle: true,
      ),
      body: HomeScreen(),
    );
  }
}
