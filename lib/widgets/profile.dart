import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E92C1),
      body: new Center(
        child: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
