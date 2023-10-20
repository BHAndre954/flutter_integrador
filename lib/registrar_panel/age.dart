import 'package:flutter/material.dart';
import 'package:p_integrador/registrar_panel/grado.dart';
import 'package:p_integrador/registrar_panel/inicio_registro.dart';

class Age extends StatefulWidget {
  @override
  _Age createState() => _Age();
}

class _Age extends State<Age> {
  final TextEditingController _edadController = TextEditingController();
  bool _puedeContinuar = false;

  void _validarEntrada() {
    final input = _edadController.text;
    final isNumero = int.tryParse(input) != null;
    setState(() {
      _puedeContinuar = isNumero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Inicio_registro(),
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
            Text(
              '¿Cuantos años tienes?',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              child: TextField(
                controller: _edadController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Ingresa tu edad',
                ),
                onChanged: (value) {
                  _validarEntrada();
                },
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _puedeContinuar
                  ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Grado(),
                        ),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF38148C),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                'Siguiente',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
