import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class ContadorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0C0C),
      body: SafeArea(
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
              "0",
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
                ElevatedButton(
                  onPressed: () => sumar(),
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1B1B1B),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16.0),
                  ),
                ),
                SizedBox(width: 32.0),
                ElevatedButton(
                  onPressed: () => reset(),
                  child: Text(
                    "RESET",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1B1B1B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  ),
                ),
                SizedBox(width: 32.0),
                ElevatedButton(
                  onPressed: () => resta(),
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1B1B1B),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16.0),
                  ),
                ),
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
    );
  }
}

void sumar() {
  // Implementa la lógica para incrementar el contador aquí
}

void reset() {
  // Implementa la lógica para reiniciar el contador aquí
}

void resta() {
  // Implementa la lógica para decrementar el contador aquí
}
