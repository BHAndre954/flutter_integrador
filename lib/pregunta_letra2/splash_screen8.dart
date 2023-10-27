import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra2/pregunta2_2.dart';


class SplashScreen8 extends StatefulWidget {
  @override
  _SplashScreenState8 createState() => _SplashScreenState8();
}

class _SplashScreenState8 extends State<SplashScreen8> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta2_2(),
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
            Image.asset('assets/Pr3.png'),
            SizedBox(height: 15),
            Text(
              'CORRECTO',
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
