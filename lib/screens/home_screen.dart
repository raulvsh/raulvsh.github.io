import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: (
        Card(
          //color: Colors.red,
          //padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          color: Color.fromARGB(200, 255, 255, 255),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título Principal
                Text(
                  '¡Hola! Soy Raúl Velasco',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0), // Espacio entre bloques de texto
                  
                // Introducción
                Text(
                  'Soy Raúl Velasco, un desarrollador especializado en programación web y móvil con sede en Burgos.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5, // Espaciado de línea
                  ),
                ),
                SizedBox(height: 16.0),
                  
                // Subtítulo
                Text(
                  'Mi enfoque se centra en:',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 12.0),
                  
                // Lista de especialidades
                Text(
                  '- Desarrollo Web: Creación de sitios web interactivos y responsivos, optimizados para rendimiento y SEO.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '- Aplicaciones Móviles: Desarrollo de aplicaciones móviles nativas e híbridas, adaptadas a las necesidades específicas de cada cliente.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '- Innovación Continua: Estoy comprometido con el aprendizaje constante y la adopción de las últimas tecnologías para ofrecer siempre lo mejor.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.0),
                  
                // Conclusión
                Text(
                  'Si tienes un proyecto en mente o simplemente quieres hablar sobre las últimas tendencias en tecnología, ¡no dudes en ponerte en contacto!',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        
      )),
    );
  }
}

