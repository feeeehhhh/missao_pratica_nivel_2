import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Itens',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Lista'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Flutter'),
              subtitle: Text('Tudo é um widget'),
              leading: Icon(Icons.flash_on),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('Dart'),
              subtitle: Text('É fácil'),
              leading: Icon(Icons.mood),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('Firebase'),
              subtitle: Text('Combina com Flutter'),
              leading: Icon(Icons.whatshot),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
