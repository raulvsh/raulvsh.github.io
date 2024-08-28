import 'package:flutter/material.dart';

class HepAppDetailScreen extends StatelessWidget {
  const HepAppDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 153, 177, 1.0),
        title: Text('hepapp titulo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'descripcion de hepapp',
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
