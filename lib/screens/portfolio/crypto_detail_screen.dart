import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class CryptoDetailScreen extends StatelessWidget {
  const CryptoDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: AppPaddings.screenPadding,
      child: Scaffold(
      backgroundColor: AppCardStyles.transparentCardBackground,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(51, 153, 177, 1.0),
        foregroundColor: Colors.white,
        title: const Text('My portfolio'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('''
My_Portfolio es una aplicación sencilla y eficaz diseñada para el seguimiento personalizado de tus inversiones en criptomonedas. La aplicación permite a los usuarios visualizar de manera clara y directa la cotización actual de sus criptos, la cantidad que poseen de cada una y el valor total de su portafolio.

Además, My_Portfolio ofrece un desglose detallado del rendimiento de cada activo, mostrando el porcentaje de ganancia o pérdida individualizada, para que puedas evaluar fácilmente el estado de tus inversiones. Con una interfaz intuitiva y minimalista, la aplicación se centra en brindar la información esencial de forma rápida y accesible, ideal para quienes buscan una herramienta sin complicaciones para gestionar y monitorear sus criptoactivos.

My_Portfolio es perfecta tanto para inversores novatos como para aquellos con experiencia que desean una solución básica pero efectiva para mantener el control de sus criptomonedas en tiempo real.''',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    ));
  }
}
