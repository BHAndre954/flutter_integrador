import 'package:flutter/material.dart';
import 'package:p_integrador/numeros/Num0.dart';
import 'package:p_integrador/pregunta_numero/splash_screen18.dart';
import 'package:p_integrador/screens/home_screen.dart';

class Opcion_numero extends StatefulWidget {
  @override
  _Opcion_numero createState() => _Opcion_numero();
}

class _Opcion_numero extends State<Opcion_numero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          double screenHeight = MediaQuery.of(context).size.height;
          double screenWidth = MediaQuery.of(context).size.width;
          double buttonWidth = screenWidth * 0.8;
          double imageSize = orientation == Orientation.landscape
              ? screenWidth * 0.25
              : screenWidth * 0.5;

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Primer botón
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF38148C), // Color de fondo
                    onPrimary: Colors.white, // Color del texto
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Bordes circulares
                    ),
                    minimumSize:
                        Size(buttonWidth, 40), // Ancho y alto del botón
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Num0(),
                      ),
                    );
                  },
                  child: Text(
                    'APRENDIZAJE',
                    style: TextStyle(fontSize: screenHeight * 0.02),
                  ),
                ),
                // Espacio entre botón e imagen
                SizedBox(height: screenHeight * 0.02),
                // Centrar y ajustar el tamaño de la imagen 1
                Center(
                  child: SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: Image.asset('assets/le1.png'),
                  ),
                ),
                // Espacio entre imagen 1 y segundo botón
                SizedBox(height: screenHeight * 0.02),
                // Segundo botón
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF38148C), // Color de fondo
                    onPrimary: Colors.white, // Color del texto
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Bordes circulares
                    ),
                    minimumSize:
                        Size(buttonWidth, 40), // Ancho y alto del botón
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SplashScreen18(),
                      ),
                    );
                    // Acción cuando se presiona el botón
                  },
                  child: Text(
                    'PRACTICA',
                    style: TextStyle(fontSize: screenHeight * 0.02),
                  ),
                ),
                // Espacio entre botón e imagen 2
                SizedBox(height: screenHeight * 0.02),
                // Centrar y ajustar el tamaño de la imagen 2
                Center(
                  child: SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: Image.asset('assets/le2.png'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
