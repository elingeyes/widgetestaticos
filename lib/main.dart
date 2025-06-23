import 'package:flutter/material.dart';

//declaracion de la funcion principal
void main(){
  runApp(const MyApp());
}

//definion de la clase que extiende StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //inicio de la app
  @override
  Widget build(BuildContext context) {
    //el return es lo que devolvera en la interfaz de vista
    return MaterialApp(
      //title el titulo de la app
      title: 'Formulario de Registro',
      //declaracion del thema
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //color primero
        primaryColor: Color(0xFF1E3A8A),
        //esquema de colores que tendra la app
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF1E3A8A),
            secondary: Color(0xFF6B7280),
        ),
        useMaterial3: true,
      ),
      home: RegistrationFormScreen(),
      debugShowCheckedModeBanner: false, //desactivamos el banner por defecto de flutter
    );
  }
}

class RegistrationFormScreen extends StatelessWidget {
  //definicio de los colores
  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color secondaryGray = Color(0xFF6B7280);
  static const Color grayLight = Color(0xFF9CA3AF);
  static const Color grayDart = Color(0xFF374151);
  static const Color backgroundGray = Color(0xFFF9FAFB);

  //declaramos el inicio de la app q contendra todos los elementos
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}