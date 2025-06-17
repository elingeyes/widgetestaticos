import 'package:flutter/material.dart';
import 'package:widgetestaticos/main.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF1E3A8A), //color azul marino
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1E3A8A),
          secondary: Color(0xFF6B7280),
        ),
        useMaterial3: true,
      ),
      home: RegistrationFormScreen(),
      debugShowCheckedModeBanner: false,
    );

  }
}
