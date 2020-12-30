import 'package:PortalSales/TEMPLATE/block/BlockPost.dart';
import 'package:PortalSales/TEMPLATE/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BlockPost>.value(
          value: BlockPost(),
        ),
      ],
      child: MaterialApp(
        title: 'Template Dokter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
