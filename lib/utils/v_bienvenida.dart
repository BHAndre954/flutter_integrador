import 'package:flutter/material.dart';
import 'package:p_integrador/screens/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHalfAndHalfScreen(),
    );
  }
}

class MyHalfAndHalfScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Color de fondo blanco para toda la pantalla
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/LOGO4.png',
                      width: 150,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ComuniMundo',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF684CA4), // Color personalizado #684ca4
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(20), // Espacio interior alrededor del texto
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, // Alinea el texto en la parte superior
                    crossAxisAlignment: CrossAxisAlignment.center, // Alinea el texto al centro horizontalmente
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Nuestra misión es hacer',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'que la vida sea más',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'accesible y cómoda para',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'todos',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'I.E 2048 Jose Carlos Mariategui',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 60), // Espacio entre el texto y los botones
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Alinea los botones al centro
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Color(0xFF3F2194), // Color personalizado #3f2194
                              borderRadius: BorderRadius.circular(20.0), // Borde redondeado
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Acción al presionar el botón "Registrar"
                              },
                              child: Text(
                                'Registrar',
                                style: TextStyle(
                                  color: Colors.white, // Color del texto en blanco
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white, // Color de fondo blanco
                              borderRadius: BorderRadius.circular(20.0), // Borde redondeado
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                                ),
                               );
                              },
                              child: Text(
                                'Ingresar',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
