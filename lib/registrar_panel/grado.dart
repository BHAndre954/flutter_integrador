import 'package:flutter/material.dart';
import 'package:p_integrador/registrar_panel/age.dart';
import 'package:p_integrador/registrar_panel/inicio_registro.dart';
import 'package:p_integrador/screens/signup_screen.dart';

class Grado extends StatefulWidget {
  @override
  _Grado createState() => _Grado();
}

class _Grado extends State<Grado> {
  Color botonColor = Color(0xFF38148C); // Color para los botones

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Age(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('¿A qué grado perteneces?',
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: botonColor, // Mismo color que el botón "Siguiente"
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('Primaria', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 60), // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: botonColor, // Mismo color que el botón "Siguiente"
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('Secundaria', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
