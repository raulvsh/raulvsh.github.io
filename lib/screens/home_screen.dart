import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.screenPadding,
      width: double.infinity,
      child: Card(
          color: AppCardStyles.transparentCardBackground,
          shape: AppCardStyles.roundedRectangleBorder2,
          child: Padding(
            padding: AppCardStyles.homeCardPadding,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Título Principal
                Text(
                  '¡Hola! Soy Raúl Velasco',
                  style: AppTextStyles.title,
                ),
                SizedBox(height: 16.0), // Espacio entre bloques de texto

                // Introducción
                Text(
                  'Soy Raúl Velasco, un desarrollador especializado en programación web y móvil con sede en Burgos.',
                  style: AppTextStyles.text18Black87Height1_5,
                ),
                SizedBox(height: 16.0),

                // Subtítulo
                Text(
                  'Mi enfoque se centra en:',
                  style: AppTextStyles.title1,
                ),
                SizedBox(height: 12.0),

                // Lista de especialidades
                Text(
                  '- Desarrollo Web: Creación de sitios web interactivos y responsivos, optimizados para rendimiento y SEO.',
                  style: AppTextStyles.text18Black87Height1_5,
                ),
                SizedBox(height: 8.0),
                Text(
                  '- Aplicaciones Móviles: Desarrollo de aplicaciones móviles nativas e híbridas, adaptadas a las necesidades específicas de cada cliente.',
                  style: AppTextStyles.text18Black87Height1_5,
                ),
                SizedBox(height: 8.0),
                Text(
                  '- Innovación Continua: Estoy comprometido con el aprendizaje constante y la adopción de las últimas tecnologías para ofrecer siempre lo mejor.',
                  style: AppTextStyles.text18Black87Height1_5,
                ),
                SizedBox(height: 16.0),

                // Conclusión
                Text(
                  'Si tienes un proyecto en mente o simplemente quieres hablar sobre las últimas tendencias en tecnología, ¡no dudes en ponerte en contacto!',
                  style: AppTextStyles.text18Black87Height1_5,
                ),
              ],
            ),
          )),
    );
  }
}
