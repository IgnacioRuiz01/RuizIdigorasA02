import 'package:flutter/material.dart';
import 'package:ruiz_idigoras_e02/main.dart';

class BotonReset extends StatelessWidget {
  final Contador contador;
  final VoidCallback onUpdate;

  const BotonReset({required this.contador, required this.onUpdate, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        contador.reset();
        onUpdate();
      },
      child: Text(
        "RESET",
        style: TextStyle(fontSize: 18.0),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF1B1B1B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      ),
    );
  }
}
