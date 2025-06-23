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
      //home: RegistrationFormScreen(),
      debugShowCheckedModeBanner: false, //desactivamos el banner por defecto de flutter
    );
  }
}

