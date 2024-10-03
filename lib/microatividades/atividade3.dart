import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de Layout'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(Icons.call, size: 50),
                  Text('Call'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.directions, size: 50),
                  Text('Route'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.share, size: 50),
                  Text('Share'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
