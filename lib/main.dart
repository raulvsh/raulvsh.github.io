import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/app_routes.dart';
import 'screens/navigator_screen.dart';

void main() async {
  // Asegúrate de que cualquier inicialización asíncrona esté completa antes de runApp.
  WidgetsFlutterBinding.ensureInitialized();

  // Descomenta y usa este bloque para inicializar Firebase antes de ejecutar la aplicación.
  /* 
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase inicializado correctamente.");
  } catch (e) {
    print("Error al inicializar Firebase: $e");
  }
  */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RaulVelassco.dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      home: const NavigatorScreen(),
    );
  }
}