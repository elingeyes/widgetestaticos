import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es el principal en la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Color(0xFF9D67A4), // lila pastel
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFCB94D),
          secondary: Color(0xFF6B7280), // Gray
        ),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
