import 'package:flutter/material.dart';

class SolucionesHostelerasDetailScreen extends StatelessWidget {
  const SolucionesHostelerasDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 255, 255, 255),
      appBar: AppBar(
        title: Text('soluciones titulo'),
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
