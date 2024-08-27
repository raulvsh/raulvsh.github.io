import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Project 1'),
            subtitle: Text('Description of project 1'),
            onTap: () {
              // Aquí puedes agregar la navegación a los detalles del proyecto
            },
          ),
          ListTile(
            title: Text('Project 2'),
            subtitle: Text('Description of project 2'),
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
