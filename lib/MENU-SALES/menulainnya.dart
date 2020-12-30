import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() => runApp(Menulain());

const List<Key> keys = [
  Key('Network'),
  Key('Network Dialog'),
  Key('Flare'),
  Key('Flare Dialog'),
  Key('Asset'),
  Key('Asset dialog'),
];

class Menulain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Nunito'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange[900],
            title: Text('Giffy Dailog Example'),
          ),
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String networkimg = 'https://visme.co/blog/make-a-gif/';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            key: keys[0],
            child: Text('Network Giffy'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => NetworkGiffyDialog(
                        key: keys[1],
                        image: Image.network(
                          networkimg,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Ostrich Running",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        description: Text(
                          'This is the Ostrich Running Dialog Box. This will help you to understand NEtwork Giffy Animation',
                          textAlign: TextAlign.center,
                        ),
                        entryAnimation: EntryAnimation.RIGHT,
                        onOkButtonPressed: () {},
                      ));
            },
          ),
        ],
      ),
    );
  }
}
