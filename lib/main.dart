// importacion de material
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// declaracion de MyApp para
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      // declaracion del tema para el formulario
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
    // definir la paleta de colores para la paleta
    static const Color primaryNavy = Color(0xFF590902);
    static const Color primaryLight = Color(0xFFBF3604);
    static const Color primaryDark = Color(0xFFF27405);
    static const Color secondaryGray = Color(0xFFF2AE2E);
    static const Color grayLight = Color(0xFF8AA64E);
    static const Color grayDark = Color(0xFF374151);
    static const Color backgroundGray = Color(0xFFF9FAFB);

    @override
  Widget build(BuildContext context) {
      // contenedor principal de el contenido de la app
    return Scaffold(
      // establecer el fondo de pantalla
      backgroundColor: backgroundGray,
      appBar: AppBar(
        // definimos el titulo principal
        title: Text(
          'Registro de Usuario',
            style: TextStyle(
              // el color del titulo
              color: Colors.white,
              // estilo del titulo
              fontWeight: FontWeight.bold,
              // tamaño del titulo
              fontSize: 20,
            ),
        ),
        // establecemos el color del contendor del texto
        backgroundColor: primaryNavy,
        elevation: 2,
        centerTitle: true, // centramos el titulo
      ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // contenedor para la seccion
              Container(
                padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white, // color del contenedor
                    borderRadius: BorderRadius.circular(12), // bordes del contenedor
                    boxShadow: [
                      BoxShadow(
                        color: secondaryGray, // leve sombra para dar efecto flotante
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                child: Column(
                  children: [
                    // establecemos el icono
                    Icon(
                      Icons.person_add, // llamamos al icono para el contenedor
                      size: 48, // definimos el tamaño para el icono
                      color: primaryNavy, // asignamos color al icono
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