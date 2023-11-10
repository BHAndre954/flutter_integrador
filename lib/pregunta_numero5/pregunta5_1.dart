import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_numero5/splash_screen31.dart';
import 'package:p_integrador/pregunta_numero5/splash_screen32.dart';

class Pregunta5_1 extends StatefulWidget {
  @override
  _Pregunta5_1 createState() => _Pregunta5_1();
}

class _Pregunta5_1 extends State<Pregunta5_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta 5'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seleccione una alternativa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38148C),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SplashScreen31(),
                  ),
                );
                // Acción para el primer botón
              },
              child: Text('7'),
            ),
            SizedBox(height: 10), // Espacio entre los botones
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38148C),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SplashScreen32(),
                  ),
                );
                // Acción para el segundo botón
              },
              child: Text('4'),
            ),
            SizedBox(height: 10), // Espacio entre los botones
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38148C),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SplashScreen31(),
                  ),
                );
                // Acción para el tercer botón
              },
              child: Text('6'),
            ),
          ],
        ),
      ),
    );
  }
}
