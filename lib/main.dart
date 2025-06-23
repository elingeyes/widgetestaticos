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
    //declaramos el return que sera la devolucion
    //de la vista
    return Scaffold(

      backgroundColor: backgroundGray,
      appBar: AppBar(
        //declaracion del appBar el titulo de la app que se vera
        title: Text(
          'Registro de persona',
          //definicion de estilo para la barra superior
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: primaryNavy,
        elevation: 2,
        //centrado del titulo
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        //declaramos el padding de la app
        padding: EdgeInsets.all(24),
        //creamos la columna q tendra la app
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //formamos el contenedor de widgets
            Container(
              //padding del contenedor
              padding: EdgeInsets.all(24),
              //el estilo del widget
              decoration: BoxDecoration(
                //declaracion del estilo colores bordes
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                //estilo de sombra para darle sensacion de elevacion
                boxShadow: [
                  BoxShadow(
                    color: secondaryGray.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0,4),
                  ),
                ],
              ),
              //contenido del widget
              child: Column(
                children: [
                  //icono que representa el widget
                  Icon(
                    Icons.person_add,
                    size: 48,
                    color: primaryNavy,
                  ),
                  SizedBox(height: 12),
                  //titulo y su estilo del widget
                  Text(
                    'Datos Personales',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: primaryNavy,
                    ),
                  ),
                  //texto de requisito
                  SizedBox(height: 8),
                  Text(
                    'Complete todos los campos requeridos',
                    //estilos del texto complementario
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryGray,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}