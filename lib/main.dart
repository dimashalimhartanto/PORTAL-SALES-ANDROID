import 'package:PortalSales/tab_home/home_utama.dart';
import 'package:flutter/material.dart';
import 'package:PortalSales/screens/bottom_navigation/main_screen.dart';
import 'package:PortalSales/screens/login_screen.dart';
import 'package:PortalSales/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intimedika Sales',
      theme: ThemeData(
        primaryColor: Color(0xFF02B462),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
