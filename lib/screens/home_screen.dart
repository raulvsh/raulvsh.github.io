import 'package:flutter/material.dart';
import 'projects_screen.dart';
import 'books_main_screen.dart'; // Si también quieres mostrar la pantalla de los libros

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectsScreen()),
                );
              },
              child: Text('View My Projects'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BooksMainScreen()),
                );
              },
              child: Text('View My Book Summaries'),
            ),
          ],
        ),
      ),
    );
  }
}
