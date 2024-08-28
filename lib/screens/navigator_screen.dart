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
  int _hoveredIndex = -1;

  final List<Widget> _pages = [
    const HomeScreen(), // Puedes añadir el contenido de la pantalla principal aquí
    const PortfolioScreen(),
    const CurriculumScreen(),
    const BooksMainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              title: TextButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex =
                        0; // La pantalla de inicio esté seleccionada
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
                _buildIconButton(Icons.work, 'Portfolio', 1),
                _buildIconButton(Icons.person, 'Currículum', 2),
                _buildIconButton(Icons.book, 'Libros', 3),
              ],
            ),
            Expanded(
                child: _pages[
                    _selectedIndex]), // Uso de Expanded para ajustar el contenido
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label, int index) {
    return MouseRegion(
        onEnter: (_) => setState(() {
              _hoveredIndex =
                  index; // Guarda el índice del botón al que se pasa el ratón por encima
            }),
        onExit: (_) => setState(() {
              _hoveredIndex = -1; // Restablece cuando el ratón sale del botón
            }),
        child: TextButton(
          onPressed: () => _onItemTapped(index),
          style: TextButton.styleFrom(
            minimumSize: Size.zero, // Tamaño mínimo del botón
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0), // Espaciado horizontal
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: _buildIconAndTextRow(icon, label, index),
        ));
  }

  Row _buildIconAndTextRow(IconData icon, String label, int index) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white, // Ícono en blanco
        ),
        const SizedBox(width: 8.0), // Espacio entre el icono y el texto
        Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              label.toUpperCase(), // Texto en mayúsculas
              style: const TextStyle(
                fontFamily: 'SanFrancisco',
                color: Colors.white, // Texto en blanco
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none, // Sin subrayado por defecto
              ),
            ),
            if (_hoveredIndex == index ||
                _selectedIndex ==
                    index) // Subrayar si está en hover o seleccionado
              _buildSectionsUnderscore(label),
          ],
        ),
      ],
    );
  }

  Positioned _buildSectionsUnderscore(String label) {
    return Positioned(
      left: 0,
      bottom: -3.0, // Ajusta esta distancia para separar el subrayado del texto
      child: Container(
        width: label.length *
            9.2, // Ajusta el ancho del subrayado según la longitud del texto
        height: 1.5, // Grosor del subrayado
        color: Colors.white, // Color del subrayado
      ),
    );
  }
}
