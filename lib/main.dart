import 'package:flutter/material.dart';
import 'package:ruiz_idigoras_e02/Counter/ContadorScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContadorScreen(),
    );
  }
}

class Contador {
  int _contador = 0;

  int get contador => _contador;

  void sumar() {
    _contador++;
    print(_contador);
  }

  void reset() {
    _contador = 0;
    print(_contador);
  }

  void restar() {
    if (_contador > 0) {
      _contador--;
      print(_contador);
    }
  }
}
