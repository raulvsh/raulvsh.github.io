import 'package:flutter/material.dart';

// Define los estilos de la Card
class AppCardStyles {
  static final RoundedRectangleBorder roundedRectangleBorder2 =
      RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2.0),
  );

  static const EdgeInsets homeCardPadding =
      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0);
//            EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0);




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

class AppColors {
  static const Color transparentCardBackground =
       Color.fromARGB(240, 255, 255, 255);

}

class AppPaddings {
  //static const screenPadding = EdgeInsets.fromLTRB(0, 0, 0, 0);
    //static const screenPadding = EdgeInsets.fromLTRB(22, 0, 12, 0);
  static const EdgeInsets cardPadding =
      EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0);
      static const pagePadding = EdgeInsets.fromLTRB(22, 0, 12, 20);


}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const title1 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const title2 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

    static const title3 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static const text18Black87Height1_5 = TextStyle(
    fontSize: 18.0,
    color: Colors.black87,
    height: 1.5,
  );

  static const text16height1_5 = TextStyle(
    fontSize: 16.0,
    height: 1.5,
  );

     static const raulvelascodevStyle = TextStyle(
                    color: Colors.white, // Color del texto
                    fontSize: 20.0, // Tamaño del texto
                  );

}
