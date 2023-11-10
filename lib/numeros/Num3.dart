import 'package:flutter/material.dart';
import 'package:p_integrador/numeros/Num4.dart';
import 'package:p_integrador/screens/home_screen.dart';

class Num3 extends StatefulWidget {
  @override
  _Num3 createState() => _Num3();
}

class _Num3 extends State<Num3> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Num3.png', // Reemplaza con la ruta de tu imagen
              width: 500, // Ajusta el ancho de la imagen
              height: 500, // Ajusta el alto de la imagen
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
                    builder: (context) => Num4(),
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
