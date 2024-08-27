import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
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
          ),
          // Añade más ListTiles para más proyectos
        ],
      ),
    );
  }
}
