import 'package:flutter/material.dart';

class HepAppDetailScreen extends StatelessWidget {


  const HepAppDetailScreen({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
