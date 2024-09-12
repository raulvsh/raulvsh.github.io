import 'package:flutter/material.dart';

class HepAppDetailScreen extends StatelessWidget {
  const HepAppDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(51, 153, 177, 1.0),
        title: const Text('hepapp titulo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'descripcion de hepapp',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
