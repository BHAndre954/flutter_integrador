import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_integrador/letras/opcion_letra.dart';
import 'package:p_integrador/screens/signin_screen.dart';
import 'package:p_integrador/services/firebase_services.dart';
import 'package:p_integrador/utils/dasboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(""),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseServices().googleSignOut();
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Mitad superior con color 0xFF38148C y contenido personalizado
          Container(
            height: MediaQuery.of(context).size.height / 4,
            color: Color(0xFF38148C),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "!Bienvenido Usuario¡",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "¿Listo para poder",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "aprender con nosotros?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/foto2.png', // Reemplaza con la ruta de tu imagen
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          // Mitad inferior con color blanco y contenido desplazable
          Expanded(
  child: Container(
    color: Colors.white,
    child: Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Text(
              "!Elige por donde",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "comenzar a jugar!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Espacio entre las líneas de texto y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Color de fondo del botón
                    onPrimary: Color(0xFF400C5C), // Color del texto del botón
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF400C5C),
                      ),
                    ),
                    elevation: 5, // Añadir elevación o sombreado
                  ),
                  onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Opcion_letra(),
                  ),
                );
              },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/L1.png', // Reemplaza con la ruta de tu imagen
                        width: 100,
                        height: 60,
                      ),
                      SizedBox(width: 30), // Espacio entre la imagen y el texto
                      Text(
                        "Alfabeto",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF400C5C),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF400C5C),
                      ),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                     
                    // Coloca aquí la lógica que deseas ejecutar al hacer clic en el botón "Número"
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/L2.png', // Reemplaza con la ruta de tu imagen para "Número"
                        width: 100,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Text(
                        "Número",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF400C5C),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF400C5C),
                      ),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    // Coloca aquí la lógica que deseas ejecutar al hacer clic en el botón "Relaciones Sociales"
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/L3.png', // Reemplaza con la ruta de tu imagen para "Relaciones Sociales"
                        width: 100,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Text(
                        "Sociales",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Color(0xFF400C5C),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xFF400C5C),
          ),
          borderRadius: BorderRadius.circular(10), // Ajusta el radio de borde según tu preferencia
        ),
        elevation: 5,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Dashboard(),
          ),
        );
        // Coloca aquí la lógica que deseas ejecutar al hacer clic en el botón "METRICAS"
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "METRICAS",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF400C5C),
            fontWeight: FontWeight.bold,
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
