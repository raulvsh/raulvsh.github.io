import 'package:flutter/material.dart';
import 'projects_screen.dart';
import 'books_main_screen.dart';
import 'curriculum_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreenContent(), // Puedes añadir el contenido de la pantalla principal aquí
    const ProjectsScreen(),
    const BooksMainScreen(),
    const CurriculumScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: const Text('raulvelasco.dev'),
        backgroundColor: Colors.blue, // Cambiar el color de la AppBar a azul
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => _onItemTapped(0),
          ),
          IconButton(
            icon: const Icon(Icons.work),
            onPressed: () => _onItemTapped(1),
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => _onItemTapped(3),
          ),
          IconButton(
            icon: const Icon(Icons.book),
            onPressed: () => _onItemTapped(2),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen Content'),
    );
  }
}
