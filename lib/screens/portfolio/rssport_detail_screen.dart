import 'package:flutter/material.dart';

class RSSportDetailScreen extends StatelessWidget {


  const RSSportDetailScreen({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200,255,255,255),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 183, 255, 1.0),

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
