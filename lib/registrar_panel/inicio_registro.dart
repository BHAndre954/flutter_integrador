import 'package:flutter/material.dart';
import 'package:p_integrador/registrar_panel/age.dart';
import 'package:p_integrador/utils/v_bienvenida.dart';

class Inicio_registro extends StatefulWidget {
  @override
  _Inicio_registro createState() => _Inicio_registro();
}

class _Inicio_registro extends State<Inicio_registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF38148C), // Cambia el color a #38148C
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/bienvenida.png', // Reemplaza 'tu_imagen.png' con la ruta de tu imagen
                  width:
                      350, // Ajusta el ancho de la imagen según tus necesidades
                  height:
                      350, // Ajusta la altura de la imagen según tus necesidades
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0), // Espaciado interior

              // Contenido de texto y botones
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Crea tu Perfil',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'AHORA!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '¡Crea tu perfil para guardar tu progreso de aprendizaje y seguir aprendiendo.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Aprender es divertido.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Color(0xFF38148C)),
                        ),
                        child: Text('Atrás'),
                      ),
                      SizedBox(width: 100),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Age(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF38148C)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
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
