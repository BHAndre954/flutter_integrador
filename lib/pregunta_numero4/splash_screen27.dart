import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_numero4/pregunta4.dart';

class SplashScreen27 extends StatefulWidget {
  @override
  _SplashScreenState27 createState() => _SplashScreenState27();
}

class _SplashScreenState27 extends State<SplashScreen27> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta4(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Color personalizado #400c5c
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PREGUNTA 4',
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
