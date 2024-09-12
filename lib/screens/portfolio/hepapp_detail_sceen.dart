import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class HepAppDetailScreen extends StatelessWidget {
  const HepAppDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.transparentCardBackground,
      shape: AppCardStyles.roundedRectangleBorder2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          shape: AppCardStyles.roundedRectangleBorder2,
          backgroundColor: const Color.fromRGBO(51, 153, 177, 1.0),
          foregroundColor: Colors.white,
          title: const Text('HepApp'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            '''
        HepApptology es una innovadora aplicación desarrollada en colaboración con la Universidad de Calgary, Alberta (Canadá), diseñada como una herramienta educacional para médicos y estudiantes de medicina. La aplicación ofrece información detallada sobre el hígado, así como la evaluación, diagnóstico y tratamiento del carcinoma hepatocelular (HCC), proporcionando recursos esenciales para la formación y el soporte en la práctica clínica.
        
        El desarrollo de HepApptology se ha realizado utilizando Flutter, el SDK de Google basado en el lenguaje de programación Dart y de código abierto. Flutter ha sido seleccionado por su alto rendimiento y la creciente comunidad de usuarios, lo que garantiza una aplicación ágil y moderna. La última versión de HepApptology unifica la base de código para garantizar su disponibilidad en múltiples plataformas, ofreciendo una experiencia de usuario consistente y manteniendo el diseño y las funcionalidades de las versiones anteriores.
        
        Esta unificación en una sola versión facilita significativamente el mantenimiento y la actualización de la aplicación. Además, gracias a las capacidades de Flutter, existe la posibilidad de expandir HepApptology a versiones web y de escritorio en el futuro, adaptando aún más la herramienta a las necesidades de los usuarios.
        
        
        Explore más sobre HepApptology y sus funcionalidades clave a continuación.''',
            style:
                TextStyle(backgroundColor: Colors.transparent, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
