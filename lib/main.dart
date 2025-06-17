import 'package:flutter/material.dart';


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

class RegistrationFormScreen extends StatelessWidget{
//paleta de colores
  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color secondaryGray = Color(0xFF6B7280);
  static const Color grayLight = Color(0xFF9CA3AF);
  static const Color grayDark = Color(0xFF374151);
  static const Color backgroundGray = Color(0xFFF9FAFB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: AppBar(
        //titulo del formulario
    title: Text('Registro de persona',
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
          //icono y titulo
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
            //apartado un margen
        SizedBox(height: 24,)
          //otro contenedor

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
                _buildSectionTitle('Información Básica', Icons.info_outline),

                _buildTextField(
                  label: 'Nombre Completo',
                  hint: 'Ingrese su nombre completo',
                  icon: Icons.person,
                ),

                _buildTextField(
                  label: 'Correo Electrónico',
                  hint: 'ejemplo@correo.com',
                  icon: Icons.email,
                ),

                _buildTextField(
                  label: 'Teléfono',
                  hint: '+591 62650217',
                  icon: Icons.phone,
                ),


                SizedBox(height: 24),

                // Información Personal
                _buildSectionTitle('Información Personal', Icons.person_outline),


                Row(
                  children: [
                    Expanded(
                      child: _buildTextField(
                        label: 'Edad',
                        hint: '25',
                        icon: Icons.cake,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _buildDropdown(),
                    ),
                  ],
                ),


                _buildTextField(
                  label: 'Dirección',
                  hint: 'Calle, Ciudad, País',
                  icon: Icons.location_on,
                  maxLines: 2,
                ),


                SizedBox(height: 24),

                // Sección: Preferencias
                _buildSectionTitle('Preferencias', Icons.settings),

                _buildCheckboxSection(),

                SizedBox(height: 16),

                _buildRadioSection(),

                SizedBox(height: 24),

                // Sección: Comentarios
                _buildSectionTitle('Comentarios Adicionales', Icons.comment),

                _buildTextField(
                  label: 'Comentarios',
                  hint: 'Escriba cualquier información adicional...',
                  icon: Icons.notes,
                  maxLines: 4,
                ),

                SizedBox(height: 32),

                // Botones de acción
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryNavy,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'Registrar',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: secondaryGray,
                          side: BorderSide(color: secondaryGray),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.clear, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'Limpiar',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),


          SizedBox(height: 16,),

          //pien de pagina informacio

          Container(
            padding: EdgeInsets.all(16),
                 decoration: BoxDecoration(
                 color: primaryNavy.withOpacity(0.05),
                 borderRadius: BorderRadius.circular(8),
                 border: Border.all(color: primaryNavy.withOpacity(0.2)),
              ),

              child: Row(
                 children: [
                       Icon(
                          Icons.info,
                          color: primaryNavy,
                          size: 20,
              ),
                  SizedBox(width: 12),
                  Expanded(
                  child: Text(
                         'Todos los datos proporcionados serán tratados de forma confidencial.',
                     style: TextStyle(
                    color: primaryNavy,
                     fontSize: 12,
              ),
              ),
              ),
              ],
              ),
            ),
          )
        ],
        ),
      ),




    );
  }
}
