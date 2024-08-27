import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
// Asegúrate de que este archivo está correctamente importado

//import 'screens/projects_screen.dart';
//import 'screens/books_main_screen.dart';
//import 'screens/book_detail_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(); // Asegúrate de usar las opciones correctas para la web
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cambiar el color principal a azul
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),

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
