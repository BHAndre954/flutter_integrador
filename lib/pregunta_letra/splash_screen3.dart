import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra/pregunta1.dart';

class SplashScreen3 extends StatefulWidget {
  @override
  _SplashScreenState3 createState() => _SplashScreenState3();
}

class _SplashScreenState3 extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta1(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), // Color personalizado #400c5c
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PREGUNTA 1',
              style: TextStyle(
                fontSize: 24, // Tamaño de fuente
                fontWeight: FontWeight.bold, // Negrita
              ),
            ),
            Image.asset('assets/Pr1.png'),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
