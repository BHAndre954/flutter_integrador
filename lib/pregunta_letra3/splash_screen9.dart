import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra3/pregunta3.dart';

class SplashScreen9 extends StatefulWidget {
  @override
  _SplashScreenState9 createState() => _SplashScreenState9();
}

class _SplashScreenState9 extends State<SplashScreen9> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta3(),
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
              'PREGUNTA 3',
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
