import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Color(0xFFBF3604),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFF27405),
            secondary: Color(0xFFF2AE2E),
        ),
        useMaterial3: true,
      ),
      home: RegistrationFromScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationFromScreen extends StatelessWidget {
    // definir los colores para la paleta
    static const Color primaryNavy = Color(0xFF590902);
    static const Color primaryLight = Color(0xFFBF3604);
    static const Color primaryDark = Color(0xFFF27405);
    static const Color secondaryGray = Color(0xFFF2AE2E);
    static const Color grayLight = Color(0xFF8AA64E);
    static const Color grayDark = Color(0xFF374151);
    static const Color backgroundGray = Color(0xFFF9FAFB);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: AppBar(
        title: Text(
          'Registro de Usuario',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
        ),
        backgroundColor: primaryNavy,
        elevation: 2,
        centerTitle: true,
      ),
    );
  }
}