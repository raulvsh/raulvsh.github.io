import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/app_routes.dart';
import 'package:raulvelasco_dev/firebase_options.dart';
import 'screens/navigator_screen.dart';

void main() async {
  // Asegúrate de que cualquier inicialización asíncrona esté completa antes de runApp.
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase antes de ejecutar la aplicación.
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase inicializado correctamente.");
  } catch (e) {
    print("Error al inicializar Firebase: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'raulvelasco.dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      home: const NavigatorScreen(),
    );
  }
}
