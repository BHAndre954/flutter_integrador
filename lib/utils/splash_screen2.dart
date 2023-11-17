import 'package:flutter/material.dart';
import 'package:p_integrador/screens/home_screen.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreenState2 createState() => _SplashScreenState2();
}

class _SplashScreenState2 extends State<SplashScreen2> {
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
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF400C5C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/cheack.png',
              height: screenHeight * 0.3, // Ajuste dinámico de altura
            ),
            SizedBox(height: screenHeight * 0.02),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(height: screenHeight * 0.025),
            Text(
              'EXCELENTE',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenHeight * 0.025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
