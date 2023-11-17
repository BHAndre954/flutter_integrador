import 'package:flutter/material.dart';
import 'package:p_integrador/numeros/Num6.dart';
import 'package:p_integrador/screens/home_screen.dart';

class Num5 extends StatefulWidget {
  @override
  _Num5 createState() => _Num5();
}

class _Num5 extends State<Num5> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isHorizontal = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: isHorizontal
            ? _buildHorizontalLayout(screenWidth)
            : _buildVerticalLayout(screenWidth),
      ),
    );
  }

  Widget _buildHorizontalLayout(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            'assets/Num5.png',
            width: screenWidth * 0.4,
            height: screenWidth * 0.4,
          ),
        ),
        SizedBox(
            width: screenWidth * 0.1), // Espacio entre la imagen y el botón
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF38148C),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minimumSize: Size(150, 40),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Num6(),
              ),
            );
          },
          child: Text('SIGUIENTE'),
        ),
      ],
    );
  }

  Widget _buildVerticalLayout(double screenWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Num5.png',
          width: screenWidth * 0.8,
          height: screenWidth * 0.8,
        ),
        SizedBox(height: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF38148C),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minimumSize: Size(200, 40),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Num6(),
              ),
            );
          },
          child: Text('SIGUIENTE'),
        ),
      ],
    );
  }
}
