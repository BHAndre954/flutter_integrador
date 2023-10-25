import 'package:flutter/material.dart';
import 'package:p_integrador/letras/alfabeto2.dart';

class Alfabeto3 extends StatefulWidget {
  @override
  _Alfabeto3 createState() => _Alfabeto3();
}

class _Alfabeto3 extends State<Alfabeto3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Alfabeto2(),
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
                  // Función para el botón 1
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
                child: Image.asset('assets/Al25.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 2
              ElevatedButton(
                onPressed: () {
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
                child: Image.asset('assets/Al26.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),

              // Botón 3
              ElevatedButton(
                onPressed: () {
                  // Función para el botón 3
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
                child: Image.asset('assets/Al27.png',
                    width: 80, height: 80), // Reemplaza con tu imagen
              ),
            ],
          ),
        ],
      ),
    );
  }
}
