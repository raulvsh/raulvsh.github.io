import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/widgets/fixed_app_bar.dart';

class HepAppDetailScreen extends StatelessWidget {
  const HepAppDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rssport titulo'),
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
