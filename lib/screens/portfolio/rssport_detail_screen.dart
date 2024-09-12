import 'package:flutter/material.dart';

class RSSportDetailScreen extends StatelessWidget {
  const RSSportDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 183, 255, 1.0),
        title: const Text('Página web para RS-Sport'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('''
RS-Sport es una empresa especializada en cronometraje deportivo utilizando tecnología avanzada de chips RFID. Ofrecemos soluciones completas para eventos deportivos, incluyendo cronometraje preciso en puntos intermedios y de meta, generación de clasificaciones en tiempo real, y venta de dorsales personalizados. Nuestro enfoque está en proporcionar un servicio integral y confiable para organizadores y participantes, asegurando que cada detalle del cronometraje se gestione con la máxima precisión.

Nuestra plataforma web, desarrollada en HTML, CSS y JavaScript, permite a los usuarios acceder a la información de eventos, resultados y clasificaciones de manera intuitiva y eficiente. Además, contamos con una aplicación asociada en Python que facilita la gestión de carreras, permitiendo añadir y actualizar eventos mediante archivos JSON, lo que garantiza una integración fluida y una administración sencilla de los datos.

RS-Sport combina tecnología de vanguardia y experiencia en el cronometraje deportivo para ofrecer un servicio destacado y personalizado en cada competición. Explore nuestras capturas de pantalla para ver en detalle cómo nuestra plataforma y servicios pueden mejorar la experiencia de su evento deportivo.


Descubra más sobre cómo RS-Sport puede llevar su cronometraje deportivo al siguiente nivel.''',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
