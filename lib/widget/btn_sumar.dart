import 'package:flutter/material.dart';
import 'package:ruiz_idigoras_e02/main.dart';

class BotonSumar extends StatelessWidget {
  final Contador contador;
  final VoidCallback onUpdate;

  const BotonSumar({required this.contador, required this.onUpdate, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        contador.sumar();
        onUpdate();
      },
      child: Text(
        "+",
        style: TextStyle(fontSize: 24.0),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF1B1B1B),
        shape: CircleBorder(),
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
