import 'package:flutter/material.dart';
import 'portfolio_screen.dart';
import 'books_main_screen.dart';
import 'curriculum_screen.dart';
import 'home_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(), // Puedes añadir el contenido de la pantalla principal aquí
    const PortfolioScreen(),
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
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        /*backgroundColor: Theme.of(context)
            .primaryColorLight, // Cambiar el color de la AppBar*/

        title: TextButton(
          onPressed: () {
            setState(() {
              _selectedIndex =
                  0; // Asegúrate de que la pantalla de inicio esté seleccionada
            });
          },
          child: const Text(
            'raulvelasco.dev',
            style: TextStyle(
              color: Colors.white, // Color del texto
              fontSize: 20.0, // Tamaño del texto
            ),
          ),
        ),
        // Iconos
        actions: <Widget>[
          //_buildIconButton(Icons.home, 'Home', 0),
          _buildIconButton(Icons.work, 'Portfolio', 1),
          _buildIconButton(Icons.person, 'Currículum', 3),
          _buildIconButton(Icons.book, 'Libros', 2),
        ],
      ),*/
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/background.jpg'), // Ruta de la imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
                backgroundColor: Colors.transparent,
                /*backgroundColor: Theme.of(context)
            .primaryColorLight, // Cambiar el color de la AppBar*/

                title: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex =
                          0; // Asegúrate de que la pantalla de inicio esté seleccionada
                    });
                  },
                  child: const Text(
                    'raulvelasco.dev',
                    style: TextStyle(
                      color: Colors.white, // Color del texto
                      fontSize: 20.0, // Tamaño del texto
                    ),
                  ),
                ),
                // Iconos
                actions: <Widget>[
                  //_buildIconButton(Icons.home, 'Home', 0),
                  _buildIconButton(Icons.work, 'Portfolio', 1),
                  _buildIconButton(Icons.person, 'Currículum', 3),
                  _buildIconButton(Icons.book, 'Libros', 2),
                ],
              ),
              _pages[_selectedIndex],
          ],
        ),
        /*child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                /*backgroundColor: Theme.of(context)
            .primaryColorLight, // Cambiar el color de la AppBar*/

                title: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex =
                          0; // Asegúrate de que la pantalla de inicio esté seleccionada
                    });
                  },
                  child: const Text(
                    'raulvelasco.dev',
                    style: TextStyle(
                      color: Colors.white, // Color del texto
                      fontSize: 20.0, // Tamaño del texto
                    ),
                  ),
                ),
                // Iconos
                actions: <Widget>[
                  //_buildIconButton(Icons.home, 'Home', 0),
                  _buildIconButton(Icons.work, 'Portfolio', 1),
                  _buildIconButton(Icons.person, 'Currículum', 3),
                  _buildIconButton(Icons.book, 'Libros', 2),
                ],
              ),
              //_pages[_selectedIndex],
            ],
          ),*/
      ),
    );
  }

  // Método para construir los IconButton con texto
  Widget _buildIconButton(IconData icon, String label, int index) {
    return TextButton(
      onPressed: () => _onItemTapped(index),
      style: TextButton.styleFrom(
          //color
          //primaryc: Colors.white, // Color del texto
          minimumSize: Size.zero, // Tamaño mínimo del botón
          padding:
              EdgeInsets.symmetric(horizontal: 16.0), // Espaciado horizontal
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 8.0), // Espacio entre el icono y el texto
          Text(label),
        ],
      ),
    );
  }
}

