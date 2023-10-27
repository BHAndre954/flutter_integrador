import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra3/pregunta3_1.dart';

class SplashScreen10 extends StatefulWidget {
  @override
  _SplashScreenState10 createState() => _SplashScreenState10();
}

class _SplashScreenState10 extends State<SplashScreen10> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta3_1(),
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
            Image.asset('assets/Pr4.png'),
            SizedBox(height: 15),
            Text(
              'INCORRECTO',
              style: TextStyle(
                fontSize: 24, // Tamaño de fuente
                fontWeight: FontWeight.bold, // Negrita
              ),
            ),
          ],
        ),
      ),
    );
  }
}
