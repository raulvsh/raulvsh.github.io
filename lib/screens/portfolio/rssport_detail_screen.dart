import 'package:flutter/material.dart';

class RSSportDetailScreen extends StatelessWidget {


  const RSSportDetailScreen({

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
          'descripcion de rssport',
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
