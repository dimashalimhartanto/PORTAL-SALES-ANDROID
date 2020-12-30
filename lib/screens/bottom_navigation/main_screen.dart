import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'home_utama';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            r"Hallo,selamat datang di portal sales intimedika puspa indah"),
      ),
    );
  }
}
