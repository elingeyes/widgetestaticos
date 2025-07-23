import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Punto de entrada de la aplicación Flutter.
// La función main ejecuta el widget MyApp que contiene la configuración principal.
  / Este widget es el principal en la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF1E3A8A), // Azul Marino
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1E3A8A),
          secondary: Color(0xFF6B7280), // Gray
        ),
        useMaterial3: true,
      ),
      home: RegistrationFormScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class RegistrationFormScreen extends StatelessWidget {
  // Definición de colores para la paleta monocromática
  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color secondaryGray = Color(0xFF6B7280);
  static const Color grayLight = Color(0xFF9CA3AF);
  static const Color grayDark = Color(0xFF374151);
  static const Color backgroundGray = Color(0xFFF9FAFB);
  @override
  Widget build(BuildContext context) {
// Pantalla principal del formulario de registro con fondo gris claro.
// Contiene un AppBar con título centrado y color azul marino,
// y un cuerpo con scroll para el formulario.
  return Scaffold(
  backgroundColor: backgroundGray,
  appBar: AppBar(
  title: Text(
  'Registro de Persona',
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
      body: SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    // Header con icono y título
    Container(
    padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: secondaryGray.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              Icons.person_add,
              size: 48,
              color: primaryNavy,
            ),
            SizedBox(height: 12),
            Text(
              'Datos Personales',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryNavy,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Complete todos los campos requeridos',
              style: TextStyle(
                fontSize: 14,
                color: secondaryGray,
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 24),

      // Formulario principal
      Container(
      padding: EdgeInsets.all(24),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
    BoxShadow(
    color: secondaryGray.withOpacity(0.1),
    blurRadius: 10,
    offset: Offset(0, 4),
    ),
    ],
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Sección: Información Básica
// Encabezado del formulario con icono de persona,
  Container(
  padding: EdgeInsets.all(24),
// Sección "Información Básica" con campos para nombre completo,
  _buildSectionTitle('Información Básica', Icons.info_outline),
// Sección "Información Personal" que contiene campo edad,
  _buildSectionTitle('Información Personal', Icons.person_outline),



