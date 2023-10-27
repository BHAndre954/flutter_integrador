import 'package:flutter/material.dart';
import 'package:p_integrador/pregunta_letra4/pregunta4_2.dart';


class SplashScreen14 extends StatefulWidget {
  @override
  _SplashScreenState14 createState() => _SplashScreenState14();
}

class _SplashScreenState14 extends State<SplashScreen14> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pregunta4_2(),
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
