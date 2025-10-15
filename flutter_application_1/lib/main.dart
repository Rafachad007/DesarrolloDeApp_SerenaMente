import 'package:flutter/material.dart';
import 'ui/screens/login.dart'; // Asegúrate de que esta ruta sea correcta

// La clase Exercise ya no vive aquí, fue movida a su propio archivo.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // El MaterialApp ahora solo necesita saber cuál es la pantalla de inicio.
    return const MaterialApp(
      home: LoginPage(), // Llama a la pantalla de login desde su archivo.
      debugShowCheckedModeBanner: false,
    );
  }
}
