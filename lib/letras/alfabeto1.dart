import 'package:flutter/material.dart';
import 'package:p_integrador/letras/A.dart';
import 'package:p_integrador/letras/B.dart';
import 'package:p_integrador/letras/C.dart';
import 'package:p_integrador/letras/alfabeto2.dart';
import 'package:p_integrador/letras/opcion_letra.dart';

class Alfabeto1 extends StatefulWidget {
  @override
  _Alfabeto1 createState() => _Alfabeto1();
}

class _Alfabeto1 extends State<Alfabeto1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Opcion_letra(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: Column(
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
                      builder: (context) => A(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al1.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 2
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => B(),
                    ),
                  );
                  // Función para el botón 2
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al2.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 3
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => C(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al3.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
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
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al4.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al5.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al6.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
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
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al7.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al8.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al9.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
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
                  // Función para el botón 4
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al10.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 5
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 5
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al11.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 6
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 6
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0), // Sin relleno
                  minimumSize: Size(90, 90),
                  backgroundColor: Colors.white, // Tamaño personalizado
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Bordes circulares
                  ),
                ),
                child: Image.asset('assets/Al12.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
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
                  builder: (context) => Alfabeto2(),
                ),
              );
            },
            child: Text('SIGUIENTE'),
          ),
        ],
      ),
    );
  }
}
