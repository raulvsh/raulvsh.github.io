import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return Center(child: Text('portfolio'));

    return Column(
      children: [
        AppBar(
          title: const Text('Portfolio',
              style: TextStyle(
                color: Colors.white,
              )),

          backgroundColor: Colors.transparent, // Hace la AppBar transparente
        ),
        _buildListTileLeft(
          imagePath: './assets/images/hepapplogo.png',
          title: 'HepApp',
          subtitle:
              'HepApptology es una aplicación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá). Se trata de una herramienta educacional destinada a médicos y estudiantes de medicina, con información sobre el hígado y la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC).',
        ),
        SizedBox(
          height: 20,
        ),
        _buildListTileLeft(
          imagePath: 'assets/images/rssportlogo.png',
          title: 'RS Sport Web',
          subtitle:
              'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.',
        ),
      ],
    );

    //body:

    /*Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/background.jpg'), // Ruta de la imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text('Portfolio', style: TextStyle(color: Colors.white,)),
              
              backgroundColor:
                  Colors.transparent, // Hace la AppBar transparente
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildListTileLeft(
                    imagePath: './assets/images/hepapplogo.png',
                    title: 'HepApp',
                    subtitle:
                        'HepApptology es una aplicación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá). Se trata de una herramienta educacional destinada a médicos y estudiantes de medicina, con información sobre el hígado y la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC).',
                  ),
                  SizedBox(height: 20,),
                  _buildListTileLeft(
                    imagePath: 'assets/images/rssportlogo.png',
                    title: 'RS Sport Web',
                    subtitle:
                        'Plataforma de cronometraje deportivo desarrollada con HTML, CSS y JavaScript para una experiencia web interactiva y precisa.',
                  ),
                  /*ListTile(
                    title: const Text('Project 1'),
                    subtitle: const Text('Description of project 1'),
                    onTap: () {
                      // Aquí puedes agregar la navegación a los detalles del proyecto
                    },
                  ),
                  ListTile(
                    title: const Text('Project 2'),
                    subtitle: const Text('Description of project 2'),
                    onTap: () {
                      // Aquí puedes agregar la navegación a los detalles del proyecto
                    },
                  ),*/
                  // Añade más ListTiles para más proyectos
                ],
              ),
            ),
          ],
        ),
      //),
      /*body: ListView(
        
        children: <Widget>[
          _buildListTile(
            imagePath: 'assets/images/hepapplogo.png',
            title: 'HepApp',
            subtitle: 'HepApptology es una aplicación realizada en colaboración con la Universidad de Calgary, en Alberta (Canadá). Se trata de una herramienta educacional destinada a médicos y estudiantes de medicina, con información sobre el hígado y la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC).',
          ),
          _buildListTile(
            imagePath: 'assets/images/rssportlogo.png',
            title: 'RS Sport Web',
            subtitle: 'Project Subtitle 2',
          ),
          // Añade más ListTiles según sea necesario
        ],
      ),*/
    );*/
  }
}

Widget _buildListTileLeft({
  required String imagePath,
  required String title,
  required String subtitle,
}) {
  return Card(
    elevation: 5,
    child: ListTile(
      leading: Image.asset(imagePath,
          width: 50, height: 50), // Imagen a la izquierda
      title: Text(title), // Título del ListTile
      subtitle: Text(subtitle), // Subtítulo del ListTile
    ),
  );
}

Widget _buildListTileRight({
  required String imagePath,
  required String title,
  required String subtitle,
}) {
  return ListTile(
    title: Text(title), // Título del ListTile
    subtitle: Text(subtitle), // Subtítulo del ListTile
    trailing:
        Image.asset(imagePath, width: 50, height: 50), // Imagen a la izquierda
  );
}
