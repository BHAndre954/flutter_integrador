import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_integrador/reusable_widgets/reusable_widgets.dart';
import 'package:p_integrador/screens/home_screen.dart';
import 'package:p_integrador/screens/reset_password.dart';
import 'package:p_integrador/screens/signup_screen.dart';
import 'package:p_integrador/services/firebase_services.dart';
import 'package:p_integrador/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
  
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("ffffff"),
          hexStringToColor("ffffff"),
          hexStringToColor("ffffff")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
  children: <Widget>[
    SizedBox(
      height: 150,
      width: 250,
      child: Image.asset('assets/LOGO4.png'),
    ),
    SizedBox(height: 3),
    Text(
      "ComuniMundo",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    SizedBox(height: 10),
    reusableTextField(
      "Ingrese tu correo",
      Icons.person_outline,
      false,
      _emailTextController,
    ),
    SizedBox(height: 20),
    reusableTextField(
      "Ingrese la contraseña",
      Icons.lock_outline,
      true,
      _passwordTextController,
    ),
    SizedBox(height: 5),
    firebaseUIButton(context, "Ingresar", () {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _emailTextController.text,
              password: _passwordTextController.text)
          .then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }).onError((error, stackTrace) {
        print("Error ${error.toString()}");
      });
    }),
    SizedBox(height: 5),
    forgetPassword(context),
    SizedBox(height: 10),
    ElevatedButton.icon(
      onPressed: () async {
        await FirebaseServices().signInWithGoogle();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      icon: Icon(Icons.account_circle_outlined),
      label: Text("Ingresar con Google"),
       style: ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return Color(0xFF400C5C);
      }
      return Color(0xFF400C5C);
    }),
  ),
),
    SizedBox(height: 10),
                signUpOption(),
                const SizedBox(
                  height: 20,
                ), 
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No tienes cuenta?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " REGISTRATE",
            style: TextStyle(color: Color(0xFF400C5C), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Olvidastes tu contraseña?",
          style: TextStyle(color: Color(0xFF400C5C), fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}
