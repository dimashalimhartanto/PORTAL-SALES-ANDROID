import 'package:flutter/material.dart';

class LoginDokter extends StatefulWidget {
  @override
  _LoginDokterState createState() => _LoginDokterState();
}

class _LoginDokterState extends State<LoginDokter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E92C1),
      body: new Center(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
