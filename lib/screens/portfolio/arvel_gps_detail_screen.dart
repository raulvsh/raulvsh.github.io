import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class ArvelGpsDetailScreen extends StatelessWidget {
  const ArvelGpsDetailScreen({
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
          backgroundColor: const Color.fromARGB(255, 6, 41, 28),
          foregroundColor: Colors.white,
          title: const Text('ARVEL GPS'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            '''ARVEL GPS es una empresa comprometida con la seguridad y protección de tus animales más queridos. Especializados en tecnología de localización avanzada, ofrecemos collares de localización GPS diseñados para asegurar que nunca pierdas de vista a tus compañeros, especialmente en actividades como la caza o largas caminatas al aire libre. Con ARVEL GPS, disfrutarás de la tranquilidad de saber que tu animal está siempre bajo control.
        
        Servicios de ARVEL GPS:
        
        1. Collares de Localización GPS: Nuestros collares de localización GPS están diseñados para ofrecer una seguridad superior y una experiencia sin preocupaciones. Construidos para resistir las condiciones más extremas, los collares de ARVEL GPS destacan por:
        
        Resistencia Extrema: Ideales para cualquier entorno, incluso los más desafiantes.
        Precisión Inigualable: Localiza a tu compañero con exactitud milimétrica.
        Batería Duradera: Prolongada vida útil para un uso continuo sin interrupciones.
        Zonas Seguras: Define áreas específicas y recibe alertas si tu compañero se sale de ellas.
        Conectividad Móvil: Seguimiento en tiempo real a través de dispositivos móviles.
        2. Teléfono Móvil Dedicado: Para maximizar la experiencia de seguimiento, ARVEL GPS ofrece un teléfono móvil ultra resistente que actúa como el complemento perfecto para el control de los collares GPS.
        
        Pantalla Amplia e Intuitiva: Visualiza fácilmente toda la información de localización.
        Interfaz de Usuario Amigable: Navegación sencilla para un uso inmediato.
        Batería de Gran Capacidad: Prolonga tus jornadas sin preocuparte por la carga.
        Notificaciones en Tiempo Real: Mantente siempre al tanto de la posición de tu compañero.
        Robustez y Resistencia: Diseñado para soportar las condiciones más rigurosas del campo.
        3. Aplicación GPS Específica: Nuestra aplicación móvil ofrece una localización precisa y en tiempo real de tu animal, todo desde la comodidad de tu smartphone. Diseñada para ser intuitiva y fácil de usar, la app de ARVEL GPS garantiza un seguimiento sin complicaciones.
        
        Localización Precisa en Tiempo Real: Nunca pierdas de vista a tu compañero.
        Interfaz Intuitiva y Fácil de Usar: Todo al alcance de tu mano, sin complicaciones.
        Notificaciones Instantáneas: Recibe alertas y actualizaciones directamente en tu teléfono.
        Compatibilidad Universal: Funciona con múltiples dispositivos móviles para mayor flexibilidad.
        4. Base de Carga Múltiple: Con la base de carga múltiple de ARVEL GPS, mantén todos tus dispositivos cargados y listos para el siguiente uso. Su diseño práctico permite recargar tanto los collares GPS como los dispositivos móviles de forma simultánea.
        
        Recarga Rápida: Minimiza el tiempo de espera y maximiza la disponibilidad.
        Comodidad Total: Simplifica la gestión de tus dispositivos con una sola base.
        Ahorro de Espacio: Organización eficiente para mantener todo en su lugar.
        Preparación Rápida: Siempre listo para salir y disfrutar del día con tus compañeros.
        Asesoramiento Personalizado: En ARVEL GPS, entendemos que cada usuario tiene necesidades específicas. Por eso, nuestros servicios son completamente personalizables, adaptándonos a tus requerimientos para que no tengas que preocuparte por nada. No dudes en consultarnos cualquier duda sin compromiso; estamos aquí para ayudarte.''',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
