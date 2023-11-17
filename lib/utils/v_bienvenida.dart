import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p_integrador/registrar_panel/inicio_registro.dart';
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
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          double screenHeight = MediaQuery.of(context).size.height;
          double screenWidth = MediaQuery.of(context).size.width;

          return Container(
            color: Colors.white,
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
                            width: orientation == Orientation.portrait
                                ? screenWidth * 0.3
                                : screenHeight * 0.3,
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'ComuniMundo',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: screenHeight * 0.05,
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
                      color: Color(0xFF684CA4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Nuestra misión es hacer',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              'que la vida sea más',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              'accesible y cómoda para',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              'todos',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              'I.E 2048 Jose Carlos Mariategui',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: screenHeight * 0.015,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.04),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF3F2194),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Inicio_registro(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Registrar',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SignInScreen(),
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
        },
      ),
    );
  }
}
