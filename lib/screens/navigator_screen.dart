import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/app_routes.dart';
import 'package:raulvelasco_dev/screens/books_main_screen.dart';
import 'package:raulvelasco_dev/screens/curriculum_screen.dart';
import 'package:raulvelasco_dev/screens/home_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/hepapp_detail_sceen.dart';
import 'package:raulvelasco_dev/screens/portfolio/rssport_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/solucioneshosteleras_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  String _currentRoute = AppRoutes.home;

  int _selectedIndex = 0;
  int _hoveredIndex = -1;

  /*final List<Widget> _pages = [
    const HomeScreen(), // Puedes añadir el contenido de la pantalla principal aquí
    const PortfolioScreen(),
    const CurriculumScreen(),
    const BooksMainScreen(),

    const HepAppDetailScreen(),
    const RSSportDetailScreen(),
    const SolucionesHostelerasDetailScreen(),
  ];*/

  final Map<String, Widget> _pages = {
    AppRoutes.home: const HomeScreen(),
    AppRoutes.portfolio: const PortfolioScreen(),
    AppRoutes.curriculum: const CurriculumScreen(),
    AppRoutes.books: const BooksMainScreen(),
    AppRoutes.hepAppDetail: const HepAppDetailScreen(),
    AppRoutes.rssportDetail: const RSSportDetailScreen(),
    AppRoutes.solucionesHostelerasDetail:
        const SolucionesHostelerasDetailScreen(),
  };

  /*void _onItemTapped(int index, String route) {
    setState(() {
      _selectedIndex = index;
      _currentRoute = route;
    });
  }*/

  void _onItemTapped(String route) {
    setState(() {
      _currentRoute = route;
    });
    print("Navigating to route: $route");

    //Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background2.webp'), // Ruta de la imagen
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
                  _onItemTapped(AppRoutes.curriculum);
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
                _buildIconButton(Icons.work, 'Portfolio', AppRoutes.portfolio),
                _buildIconButton(
                    Icons.person, 'Currículum', AppRoutes.curriculum),
                _buildIconButton(Icons.book, 'Libros', AppRoutes.books),
              ],
            ),
            Expanded(
              //child: _pages[                    _selectedIndex]), // Uso de Expanded para ajustar el contenido
              //child: AppRoutes.getPage(_selectedIndex)),
              /*child: Navigator(
              onGenerateRoute: AppRoutes.generateRoute,
              initialRoute: _currentRoute,
            )),*/
              child: IndexedStack(
                //ndex: _getCurrentPageIndex(),
                index: _routeIndex(_currentRoute),

                children: _pages.values.toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label, String route) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _hoveredIndex = _routeIndex(route);
      }),
      onExit: (_) => setState(() {
        _hoveredIndex = -1;
      }),
      child: TextButton(
        onPressed: () => _onItemTapped(route),
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: _buildIconAndTextRow(icon, label),
      ),
    );
  }

  Row _buildIconAndTextRow(IconData icon, String label) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 8.0),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'SanFrancisco',
                color: Colors.white,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
            if (_currentRoute == _routeForLabel(label))
              _buildSectionsUnderscore(label),
          ],
        ),
      ],
    );
  }

  /*Widget _buildIconButton(IconData icon, String label, int index) {
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
  }*/

  /*Row _buildIconAndTextRow(IconData icon, String label, int index) {
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
  }*/

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

  int _routeIndex(String route) {
    switch (route) {
      case AppRoutes.portfolio:
        return 1;
      case AppRoutes.curriculum:
        return 2;
      case AppRoutes.books:
        return 3;
      default:
        return 0;
    }
  }

  /*int _getCurrentPageIndex() {
    switch (_currentRoute) {
      case AppRoutes.portfolio:
        return 1;
      case AppRoutes.curriculum:
        return 2;
      case AppRoutes.books:
        return 3;
      case AppRoutes.hepAppDetail:
      case AppRoutes.rssportDetail:
      case AppRoutes.solucionesHostelerasDetail:
        return 4;
      default:
        return 0;
    }
  }*/

  String _routeForLabel(String label) {
    switch (label) {
      case 'Portfolio':
        return AppRoutes.portfolio;
      case 'Currículum':
        return AppRoutes.curriculum;
      case 'Libros':
        return AppRoutes.books;
      default:
        return AppRoutes.home;
    }
  }
}
