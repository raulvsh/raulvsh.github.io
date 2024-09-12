import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class SolucionesHostelerasDetailScreen extends StatelessWidget {
  const SolucionesHostelerasDetailScreen({
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
          backgroundColor: Colors.white,
          title: const Text('Gestión de pedidos para solucioneshosteleras.es'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            '''
        Nuestra aplicación de gestión de pedidos para Soluciones Hosteleras está diseñada para facilitar la compra y administración de suministros y equipamiento para negocios de hostelería a través de una conexión directa con la API de Makro. Ofrecemos una amplia gama de productos, incluyendo maquinaria de hostelería, mobiliario, refrigeración, aparatos de cocina, utensilios, menaje, productos desechables y todo lo necesario para equipar cualquier negocio de hostelería de manera profesional y eficiente. Además, hemos ampliado nuestra oferta para incluir purificadores de aire con filtros HEPA, generadores de ozono y otros productos destinados a la protección contra el COVID-19.
        
        La aplicación y su interfaz gráfica están desarrolladas en Python, destacándose por su simplicidad y fiabilidad, en respuesta a la necesidad del cliente de un sistema robusto y fácil de usar. A diferencia de soluciones basadas en web, esta aplicación evita problemas comunes de conectividad, proporcionando una experiencia estable y eficiente en la gestión de pedidos.
        
        Nuestra solución permite a los usuarios realizar pedidos de manera rápida y sin complicaciones, asegurando que sus negocios cuenten siempre con los suministros necesarios para operar con éxito. A continuación, encontrará capturas de pantalla que muestran la funcionalidad y facilidad de uso de nuestra aplicación de gestión de pedidos.
        
        
        Descubra cómo nuestra aplicación puede optimizar la gestión de pedidos para su negocio de hostelería.''',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
