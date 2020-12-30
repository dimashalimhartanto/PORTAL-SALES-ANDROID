import 'package:flutter/material.dart';
import 'package:PortalSales/screens/login_screen.dart';
import 'package:PortalSales/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intiwid Rispacs',
      theme: ThemeData(
        primaryColor: Color(0xFF1e92c1),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
