import 'package:flutter/material.dart';
import 'package:p_integrador/letras/opcion_letra.dart';
import 'package:p_integrador/pregunta_letra/pregunta1_1.dart';

class Pregunta1 extends StatefulWidget {
  @override
  _Pregunta1 createState() => _Pregunta1();
}

class _Pregunta1 extends State<Pregunta1> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿Qué letra es la siguiente?',
              style: TextStyle(
                fontSize: 24, // Tamaño de fuente
                fontWeight: FontWeight.bold, // Peso de la fuente
              ),
            ),
            SizedBox(height: 20), // Espacio entre el texto y la imagen
            Image.asset(
              'assets/Pr2.png', // Reemplaza con la ruta de tu imagen
              width: 350, // Ajusta el ancho de la imagen
              height: 350, // Ajusta el alto de la imagen
            ),
            SizedBox(height: 30), // Espacio entre la imagen y el botón
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
                    builder: (context) => Pregunta1_1(),
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
