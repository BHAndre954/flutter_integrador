import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra5/pregunta5.dart';

class SplashScreen15 extends StatefulWidget {
  @override
  _SplashScreenState15 createState() => _SplashScreenState15();
}

class _SplashScreenState15 extends State<SplashScreen15> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta5(),
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
              'PREGUNTA 5',
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
