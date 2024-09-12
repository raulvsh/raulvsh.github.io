import 'package:flutter/material.dart';

class SolucionesHostelerasDetailScreen extends StatelessWidget {
  const SolucionesHostelerasDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 255, 255, 255),
      appBar: AppBar(
        title: const Text('soluciones titulo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'descripcion de soluciones',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
