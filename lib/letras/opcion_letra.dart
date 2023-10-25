import 'package:flutter/material.dart';
import 'package:p_integrador/letras/alfabeto1.dart';
import 'package:p_integrador/screens/home_screen.dart';

class Opcion_letra extends StatefulWidget {
  @override
  _Opcion_letra createState() => _Opcion_letra();
}

class _Opcion_letra extends State<Opcion_letra> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Primer botón
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF38148C), // Color de fondo
              onPrimary: Colors.white, // Color del texto
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Bordes circulares
              ),
              minimumSize: Size(300, 40), // Ancho y alto del botón
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Alfabeto1(),
                ),
              );
            },
            child: Text('APRENDIZAJE'),
          ),
          // Centrar y ajustar el tamaño de la imagen 1
          Center(
            child: SizedBox(
              width: 180, // Ancho deseado
              height: 180, // Alto deseado
              child: Image.asset('assets/le1.png'),
            ),
          ),
          // Segundo botónr
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF38148C), // Color de fondo
              onPrimary: Colors.white, // Color del texto
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Bordes circulares
              ),
              minimumSize: Size(300, 40), // Ancho y alto del botón
            ),
            onPressed: () {
              // Acción cuando se presiona el botón
            },
            child: Text('PRACTICA'),
          ),
          // Centrar y ajustar el tamaño de la imagen 2
          Center(
            child: SizedBox(
              width: 180, // Ancho deseado
              height: 180, // Alto deseado
              child: Image.asset('assets/le2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
