import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Para controlar a aba atual

  final List<Widget> _pages = [
    DestinosPage(),
    PacotesPage(),
    ContatoPage(),
    SobreNosPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Atualiza o índice atual
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Mundo'),
      ),
      body: Column(
        children: [
          // Banner de Destaque
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://example.com/banner.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Campo de Pesquisa
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Pesquise seu destino',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Conteúdo da página atual
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Destinos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Pacotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contato',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre Nós',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        backgroundColor:
            Colors.white, // Define a cor de fundo da barra de navegação
        selectedItemColor: Colors.blue, // Cor do item selecionado
        unselectedItemColor: Colors.grey, // Cor do item não selecionado
      ),
    );
  }
}

// Páginas
class DestinosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Destinos'),
    );
  }
}

class PacotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Pacotes'),
    );
  }
}

class ContatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Contato'),
    );
  }
}

class SobreNosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página Sobre Nós'),
    );
  }
}
