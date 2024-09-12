/*import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/app_routes.dart';
import 'package:raulvelasco_dev/screens/home_screen.dart';
import 'package:raulvelasco_dev/screens/navigator_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/hepapp_detail_sceen.dart';
import 'package:raulvelasco_dev/screens/portfolio/project_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/solucioneshosteleras_detail_screen.dart';
import 'package:raulvelasco_dev/widgets/grid_tile_widget.dart';

import 'portfolio/rssport_detail_screen.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas en la cuadrícula
          crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
          mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
          childAspectRatio:
              6 / 2, // Relación de aspecto de los elementos (ancho/alto)
        ),
        children: [
          GridTileWidget(
            imagePath: './assets/images/hepapplogo.png',
            title: 'HepApp',
            subtitle:
                'HepApptology es una aplicación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá). Se trata de una herramienta educacional destinada a médicos y estudiantes de medicina, con información sobre el hígado y la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC).',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.hepAppDetail);

              //gridTileOnTap(context, 4); // Índice para HepAppDetailScreen
            },
          ),
          GridTileWidget(
            imagePath: 'assets/images/rssportlogo.png',
            title: 'RS Sport Web',
            subtitle:
                'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.',
            onTap: () {
                 
                    Navigator.pushNamed(context, AppRoutes.rssportDetail);

//              gridTileOnTap(context, 5); // Índice para RSSportDetailScreen
            },
          ),
          GridTileWidget(
            imagePath: 'assets/images/solucioneshosteleras.jpg',
            title: 'Soluciones Hosteleras',
            subtitle:
                'Integración de API para plataforma de venta de soluciones hosteleras en Makro: Productos de hostelería optimizados para una experiencia de compra eficiente.',
            onTap: () {
                            Navigator.pushNamed(context, AppRoutes.solucionesHostelerasDetail);

              //gridTileOnTap(
               //   context, 6); // Índice para SolucionesHostelerasDetailScreen
            },
          ),
          /*
          GridTileWidget(
            imagePath: './assets/images/hepapplogo.png',
            title: 'HepApp',
            subtitle:
                'HepApptology es una aplicación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá). Se trata de una herramienta educacional destinada a médicos y estudiantes de medicina, con información sobre el hígado y la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC).',
          ),
          GridTileWidget(
            imagePath: 'assets/images/rssportlogo.png',
            title: 'RS Sport Web',
            subtitle:
                'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.',
          ),
          GridTileWidget(
            imagePath: 'assets/images/rssportlogo.png',
            title: 'RS Sport Web',
            subtitle:
                'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.',
          ),
          GridTileWidget(
              imagePath: 'assets/images/rssportlogo.png',
              title: 'RS Sport Web',
              subtitle:
                  'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.'),*/
        ],
      ),
    );
  }

  /*Future<void> gridTileOnTap(BuildContext context, int index) async {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => NavigatorScreen(),
    ),
  ).then((_) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => AppRoutes.getPage(index),
      ),
    );
  });
}*/

Future<void> gridTileOnTap(BuildContext context, String routeName) async {
  Navigator.pushNamed(context, routeName);
}

  /* Widget _buildGridTile({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Card(
      color: Color.fromARGB(180, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 15.0,
      shadowColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              imagePath,
              height:
                  120.0, // Ajusta la altura de la imagen según sea necesario
              width: double.infinity,
              fit: BoxFit
                  .contain, // La imagen cubre completamente el espacio disponible
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
              maxLines: 3,
              overflow: TextOverflow
                  .ellipsis, // Añade puntos suspensivos si el texto es demasiado largo
            ),
          ),
        ],
      ),
    );
  }*/

  Widget _buildListTileLeft({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Card(
        elevation: 15,
        child: ListTile(
          leading: Image.asset(imagePath,
              width: 100, height: 50), // Imagen a la izquierda
          title: Text(title), // Título del ListTile
          subtitle: Text(subtitle), // Subtítulo del ListTile
        ),
      ),
    );
  }

  Widget _buildListTileRight({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Card(
        elevation: 15,
        shadowColor: Colors.amber,
        child: ListTile(
          leading: Image.asset(imagePath,
              width: 100, height: 50), // Imagen a la izquierda
          title: Text(title), // Título del ListTile
          subtitle: Text(subtitle), // Subtítulo del ListTile
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/screens/portfolio/arvel_gps_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/crypto_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/hepapp_detail_sceen.dart';
import 'package:raulvelasco_dev/screens/portfolio/rssport_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/solucioneshosteleras_detail_screen.dart';
import 'package:raulvelasco_dev/styles.dart';
import 'package:raulvelasco_dev/widgets/grid_tile_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => PortfolioHomeScreen();
            break;
          case '/hepapp':
            builder = (BuildContext _) => const HepAppDetailScreen();
            break;
          case '/rssport':
            builder = (BuildContext _) => const RSSportDetailScreen();
            break;
          case '/solucioneshosteleras':
            builder =
                (BuildContext _) => const SolucionesHostelerasDetailScreen();
            break;
            case '/cryptoportfolio':
            builder =
                (BuildContext _) => const CryptoDetailScreen();
            break;
            case '/arvelgps':
            builder =
                (BuildContext _) => const ArvelGpsDetailScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class PortfolioHomeScreen extends StatelessWidget {
  const PortfolioHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      //padding: const EdgeInsets.all(20.0),
      //padding: AppCardStyles.homeCardPadding,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas en la cuadrícula
        crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
        mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
        childAspectRatio:
            6 / 2, // Relación de aspecto de los elementos (ancho/alto)
      ),
      children: [
        GridTileWidget(
          imagePath: './assets/images/hepapplogo.png',
          title: 'HepApp',
          subtitle:
              'HepApptology es una aplifcación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá).',
          onTap: () {
            Navigator.of(context).pushNamed('/hepapp');
          },
        ),
        GridTileWidget(
          imagePath: 'assets/images/rssportlogo.png',
          title: 'RS Sport Web',
          subtitle:
              'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript.',
          onTap: () {
            Navigator.of(context).pushNamed('/rssport');
          },
        ),
        GridTileWidget(
          imagePath: 'assets/images/solucioneshosteleras.jpg',
          title: 'Soluciones Hosteleras',
          subtitle:
              'Integración de API para plataforma de venta de soluciones hosteleras en Makro.',
          onTap: () {
            Navigator.of(context).pushNamed('/solucioneshosteleras');
          },
        ),
        GridTileWidget(
          imagePath: 'assets/images/crypto.png',
          title: 'Seguimiento de cotización de criptomonedas',
          subtitle: 'Controla tu portafolio de criptomonedas en un solo lugar.',
          onTap: () {
            Navigator.of(context).pushNamed('/cryptoportfolio');
          },
        ),
        GridTileWidget(
          imagePath: 'assets/images/arvel_logo.png',
          title: 'ARVEL GPS',
          subtitle:
              'ARVEL es una empresa dedicada a proteger a tus animales más queridos. Con nuestros collares de localización GPS, no te preocupes por perder a tu compañero nunca más.',
          onTap: () {
            Navigator.of(context).pushNamed('/arvelgps');
          },
        ),
      ],
    );
  }
}
