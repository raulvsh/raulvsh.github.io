import 'package:flutter/material.dart';

// Define los estilos de la Card
class AppCardStyles {
  static final RoundedRectangleBorder roundedRectangleBorder2 =
      RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2.0),
  );

  static final EdgeInsets homeCardPadding =
      EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0);

  static final Color transparentCardBackground =
      Color.fromARGB(235, 255, 255, 255);

  // Define el estilo de la Card
  /*static Card getHomeCardStyle(Widget child) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      //margin: EdgeInsets.all(20.0), // Margen para la Card
      color: Color.fromARGB(200, 255, 255, 255),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: child,
      ),
    );
  }*/
}

class AppColors {}

class AppPaddings {}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const text18Black87Space1_5 = TextStyle(
    fontSize: 18.0,
    color: Colors.black87,
    height: 1.5, // Espaciado de línea
  );

  static const title1 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
