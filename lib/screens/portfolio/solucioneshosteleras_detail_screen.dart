import 'package:flutter/material.dart';

class SolucionesHostelerasDetailScreen extends StatelessWidget {


  const SolucionesHostelerasDetailScreen({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soluciones titulo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'descripcion de soluciones',
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
