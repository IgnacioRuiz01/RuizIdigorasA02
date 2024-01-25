import 'package:flutter/material.dart';
import 'package:ruiz_idigoras_e02/main.dart';
import 'package:ruiz_idigoras_e02/widget/btn_reset.dart';
import 'package:ruiz_idigoras_e02/widget/btn_restar.dart';
import 'package:ruiz_idigoras_e02/widget/btn_sumar.dart';

class ContadorScreen extends StatefulWidget {
  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  final Contador contador = Contador();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 24, 24),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CONTADOR",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 48.0,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "${contador.contador}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 48.0,
                  ),
                ),
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotonSumar(contador: contador, onUpdate: _updateUI),
                    SizedBox(width: 32.0),
                    BotonReset(contador: contador, onUpdate: _updateUI),
                    SizedBox(width: 32.0),
                    BotonRestar(contador: contador, onUpdate: _updateUI),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  "By Ignacio_Ruiz",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFACABAB),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _updateUI() {
    setState(() {
      // No se requiere lógica específica aquí, ya que
      // el Texto "${contador.contador}" se actualizará automáticamente
      // cuando el estado cambie y se llame a _updateUI().
    });
  }
}
