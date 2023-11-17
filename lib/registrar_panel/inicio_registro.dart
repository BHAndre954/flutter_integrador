import 'package:flutter/material.dart';
import 'package:p_integrador/registrar_panel/age.dart';
import 'package:p_integrador/utils/v_bienvenida.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Inicio_registro extends StatefulWidget {
  @override
  _Inicio_registro createState() => _Inicio_registro();
}

class _Inicio_registro extends State<Inicio_registro> {
  List<String> images = [
    'assets/bienvenida.png',
    'assets/bienvenida2.png',
    'assets/bienvenida3.png',
  ];

  // ignore: unused_field
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF38148C), Color(0xFF9A5FFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: CarouselSlider(
                items: images.map((image) {
                  return Image.asset(
                    image,
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.4,
                    fit: BoxFit.cover,
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentImageIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Crea tu Perfil',
                        style: TextStyle(
                          fontSize: screenHeight * 0.04,
                          color: Color(0xFF38148C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        '¡AHORA!',
                        style: TextStyle(
                          fontSize: screenHeight * 0.03,
                          color: Color(0xFF38148C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        '¡Crea tu perfil para guardar tu progreso de aprendizaje y sigue aprendiendo!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenHeight * 0.018,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Aprender es divertido.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenHeight * 0.018,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(Color(0xFF38148C)),
                        ),
                        child: Text('Atrás'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Age(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF38148C)),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text('Siguiente'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
