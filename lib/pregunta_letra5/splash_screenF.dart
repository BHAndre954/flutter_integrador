import 'package:flutter/material.dart';
import 'package:p_integrador/screens/home_screen.dart';

class SplashScreenF extends StatefulWidget {
  @override
  _SplashScreenStateF createState() => _SplashScreenStateF();
}

class _SplashScreenStateF extends State<SplashScreenF> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
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
            Image.asset('assets/Pf.png'),
            SizedBox(height: 15),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'FELICIDADES COMPLETASTE EL MÓDULO "LETRAS"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24, // Tamaño de fuente
                    fontWeight: FontWeight.bold, // Negrita
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
