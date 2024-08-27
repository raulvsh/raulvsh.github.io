import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/navigator_screen.dart';

//import 'screens/projects_screen.dart';
//import 'screens/books_main_screen.dart';
//import 'screens/book_detail_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Inicializar Firebase con las opciones correctas para la web
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase inicializado correctamente.");
  } catch (e) {
    print("Error al inicializar Firebase: $e");
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RaulVelasco.dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      /*home: const Center(
        child: Text('hola'),
      )*/
      
      
      home: const NavigatorScreen(),

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
