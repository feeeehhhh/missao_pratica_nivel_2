import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empilhamento de Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack de Widgets'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center, // Alinha os filhos no centro
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
