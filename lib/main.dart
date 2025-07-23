import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Punto de entrada de la aplicación Flutter.
// La función main ejecuta el widget MyApp que contiene la configuración principal.
  void main() {
    runApp(const MyApp());
  }

// MyApp es un widget sin estado que define el tema y la pantalla inicial de la app.
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  }
// Pantalla principal del formulario de registro con fondo gris claro.
// Contiene un AppBar con título centrado y color azul marino,
// y un cuerpo con scroll para el formulario.
  return Scaffold(
  backgroundColor: backgroundGray,
  appBar: AppBar(
  title: Text(
  'Registro de Persona',
// Encabezado del formulario con icono de persona,
  Container(
  padding: EdgeInsets.all(24),
// Sección "Información Básica" con campos para nombre completo,
  _buildSectionTitle('Información Básica', Icons.info_outline),
// Sección "Información Personal" que contiene campo edad,
  _buildSectionTitle('Información Personal', Icons.person_outline),



