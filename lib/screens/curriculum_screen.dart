import 'package:flutter/material.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: (Card(
        margin: EdgeInsets.all(20.0),
        color: Color.fromARGB(200, 255, 255, 255),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título Principal
              Text(
                'Curriculum',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16.0), // Espacio entre bloques de texto

            ],
          ),
        ),
      )),
    );
  }
}
