import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_integrador/registrar_panel/grado.dart';
import 'package:p_integrador/registrar_panel/inicio_registro.dart';
import 'package:p_integrador/reusable_widgets/reusable_widgets.dart';
import 'package:p_integrador/screens/home_screen.dart';
import 'package:p_integrador/utils/color_utils.dart';
import 'package:p_integrador/utils/splash_screen2.dart';
import 'package:p_integrador/utils/v_bienvenida.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "Registre su cuenta",
          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("ffffff"),
              hexStringToColor("ffffff"),
              hexStringToColor("ffffff")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ingrese su nombre de usuario",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Texto en negrita
                    ),
                    SizedBox(height: 20), // Espacio vertical entre el texto y el TextField
                    reusableTextField(
                      "",
                      Icons.person_outline,
                      false,
                      _userNameTextController,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ingrese su email",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Texto en negrita
                    ),
                    SizedBox(height: 20), // Espacio vertical entre el texto y el TextField
                    reusableTextField(
                      "",
                      Icons.email_outlined,
                      false,
                      _emailTextController,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ingrese su contraseña",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Texto en negrita
                    ),
                    SizedBox(height: 20), // Espacio vertical entre el texto y el TextField
                    reusableTextField(
                      "",
                      Icons.lock_outlined,
                      true,
                      _passwordTextController,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                firebaseUIButton(context, "Registrarse", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text,
                      )
                      .then((value) {
                    print("Cuenta creada");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen2()),
                    );
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
