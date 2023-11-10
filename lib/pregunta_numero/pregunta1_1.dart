import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_numero/splash_screen19.dart';
import 'package:p_integrador/pregunta_numero/splash_screen20.dart';

class Pregunta1_1 extends StatefulWidget {
  @override
  _Pregunta1_1 createState() => _Pregunta1_1();
}

class _Pregunta1_1 extends State<Pregunta1_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta 1'),
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
                    builder: (context) => SplashScreen19(),
                  ),
                );
                // Acción para el primer botón
              },
              child: Text('8'),
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
                    builder: (context) => SplashScreen20(),
                  ),
                );
                // Acción para el segundo botón
              },
              child: Text('6'),
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
                    builder: (context) => SplashScreen19(),
                  ),
                );
                // Acción para el tercer botón
              },
              child: Text('9'),
            ),
          ],
        ),
      ),
    );
  }
}
