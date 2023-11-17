import 'package:flutter/material.dart';
import 'package:p_integrador/utils/v_bienvenida.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyApp(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF400C5C), // Color personalizado #400c5c
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/splash.png',
              height: MediaQuery.of(context).size.height * 0.4, // Ajusta la altura de la imagen
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03), // Espacio ajustado
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04), // Espacio ajustado
            Text(
              'COMUNIMUNDO',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.05, // Ajusta el tamaño del texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
