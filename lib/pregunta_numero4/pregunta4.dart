import 'package:flutter/material.dart';
import 'package:p_integrador/numeros/opcion_numero.dart';
import 'package:p_integrador/pregunta_numero4/pregunta4_1.dart';

class Pregunta4 extends StatefulWidget {
  @override
  _Pregunta4 createState() => _Pregunta4();
}

class _Pregunta4 extends State<Pregunta4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Opcion_numero(),
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
              '¿Cuanto es la suma?',
              style: TextStyle(
                fontSize: 24, // Tamaño de fuente
                fontWeight: FontWeight.bold, // Peso de la fuente
              ),
            ),
            SizedBox(height: 20), // Espacio entre el texto y la imagen
            Image.asset(
              'assets/Pr12.png', // Reemplaza con la ruta de tu imagen
              width: 350, // Ajusta el ancho de la imagen
              height: 350, // Ajusta el alto de la imagen
            ),
            SizedBox(height: 30), // Espacio entre la imagen y el botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38148C), // Color de fondo
                onPrimary: Colors.white, // Color del texto
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Bordes circulares
                ),
                minimumSize: Size(200, 40), // Ancho y alto del botón
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pregunta4_1(),
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
