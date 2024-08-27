import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/books_main_screen.dart';
import 'screens/book_detail_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Asegúrate de que esta línea no se comenta
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cambiar el color principal a azul
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),

      /*initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/projects': (context) => ProjectsScreen(),
        '/book_summaries': (context) => BooksMainScreen(),
        '/book_detail': (context) => BookDetailScreen(),
      },*/
    );
  }
}
