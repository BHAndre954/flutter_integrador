import 'package:flutter/material.dart';
import 'package:p_integrador/letras/%C3%91.dart';
import 'package:p_integrador/letras/M.dart';
import 'package:p_integrador/letras/N.dart';
import 'package:p_integrador/letras/O.dart';
import 'package:p_integrador/letras/P.dart';
import 'package:p_integrador/letras/Q.dart';
import 'package:p_integrador/letras/R.dart';
import 'package:p_integrador/letras/S.dart';
import 'package:p_integrador/letras/T.dart';
import 'package:p_integrador/letras/U.dart';
import 'package:p_integrador/letras/V.dart';
import 'package:p_integrador/letras/W.dart';
import 'package:p_integrador/letras/alfabeto1.dart';
import 'package:p_integrador/letras/alfabeto3.dart';

class Alfabeto2 extends StatefulWidget {
  @override
  _Alfabeto2 createState() => _Alfabeto2();
}

class _Alfabeto2 extends State<Alfabeto2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Alfabeto1(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 20), // Espacio en blanco en la parte superior
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Botón 1
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => M(),
              ),
            );
                  // Función para el botón 1
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al13.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 2
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => N(),
              ),
            );
                  // Función para el botón 2
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al14.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 3
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NN(),
              ),
            );
                  // Función para el botón 3
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al15.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),
            ],
          ),
          SizedBox(height: 20), // Espacio entre las dos filas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Botón 4
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => O(),
              ),
            );
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al16.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => P(),
              ),
            );
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al17.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Q(),
              ),
            );
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al18.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),
            ],
          ),
          SizedBox(height: 20), // Espacio entre las dos filas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Botón 4
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => R(),
              ),
            );
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al19.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => S(),
              ),
            );
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al20.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => T(),
              ),
            );
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al21.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),
            ],
          ),
          SizedBox(height: 20), // Espacio entre las dos filas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Botón 4
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => U(),
              ),
            );
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al22.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => V(),
              ),
            );
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al23.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => W(),
              ),
            );
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al24.png', width: 80, height: 80), // Reemplaza con tu imagen
              ),
            ],
          ),
          SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF38148C), // Color de fondo
              onPrimary: Colors.white, // Color del texto
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Bordes circulares
              ),
              minimumSize: Size(200, 40), // Ancho y alto del botón
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Alfabeto3(),
                ),
              );
            },
            child: Text('SIGUIENTE'),
          ),
        ],
        
      ),
    ),
    );
  }
}
