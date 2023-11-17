import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_integrador/letras/opcion_letra.dart';
import 'package:p_integrador/numeros/opcion_numero.dart';
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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor =
        MediaQuery.of(context).orientation == Orientation.portrait ? 0.7 : 1.0;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight / 4,
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
                          fontSize: screenHeight * 0.05 * scaleFactor,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "¿Listo para poder",
                        style: TextStyle(
                          fontSize: screenHeight * 0.03 * scaleFactor,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "aprender con nosotros?",
                        style: TextStyle(
                          fontSize: screenHeight * 0.03 * scaleFactor,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/foto2.png',
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.2,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Column(
                  children: [
                    Text(
                      "!Elige por donde",
                      style: TextStyle(
                        fontSize: screenHeight * 0.05 * scaleFactor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "comenzar a jugar!",
                      style: TextStyle(
                        fontSize: screenHeight * 0.05 * scaleFactor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Opcion_letra(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/L1.png',
                                width: screenWidth * 0.2 * scaleFactor,
                                height: screenHeight * 0.1 * scaleFactor,
                              ),
                              SizedBox(width: screenWidth * 0.03 * scaleFactor),
                              Text(
                                "Alfabeto",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.04 * scaleFactor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Opcion_numero(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/L2.png',
                                width: screenWidth * 0.2 * scaleFactor,
                                height: screenHeight * 0.1 * scaleFactor,
                              ),
                              SizedBox(width: screenWidth * 0.03 * scaleFactor),
                              Text(
                                "Número",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.04 * scaleFactor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                            // Lógica para el botón "Sociales"
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/L3.png',
                                width: screenWidth * 0.2 * scaleFactor,
                                height: screenHeight * 0.1 * scaleFactor,
                              ),
                              SizedBox(width: screenWidth * 0.03 * scaleFactor),
                              Text(
                                "Sociales",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.04 * scaleFactor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Dashboard(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(
                                screenHeight * 0.02 * scaleFactor),
                            child: Text(
                              "METRICAS",
                              style: TextStyle(
                                fontSize: screenHeight * 0.04 * scaleFactor,
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
          ],
        ),
      ),
    );
  }
}
