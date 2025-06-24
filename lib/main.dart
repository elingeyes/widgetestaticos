import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF1E3A8A),
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

class RegistrationFormScreen extends StatelessWidget {
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
                    hint: '+1 234 567 8900',
                    icon: Icons.phone,
                  ),

                  SizedBox(height: 24),

                  // Sección: Información Personal
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

            SizedBox(height: 16),

            // Footer informativo
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
          ],
        ),
      ),
    );
  }


  // Esta función construye un encabezado de sección en el formulario.
  // Muestra un ícono, un texto como título y una línea divisoria a la derecha
  // para separar visualmente las secciones del formulario.
  Widget _buildSectionTitle(String title, IconData icon) {
    return Padding(
      // Aplica un espacio inferior de 16 píxeles para separar el título de lo siguiente
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          // Ícono que representa la sección (por ejemplo, info, persona, ajustes, etc.)
          Icon(
            icon,
            color: primaryNavy, // Color azul definido en la paleta
            size: 20,
          ),
          // Espacio horizontal entre el ícono y el texto
          SizedBox(width: 8),
          // Título de la sección con estilo negrita y color azul
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryNavy,
            ),
          ),
          // Línea horizontal que se expande para completar el espacio restante
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12),
              height: 1,
              color: grayLight,
            ),
          ),
        ],
      ),
    );
  }


  // Esta función genera un campo de texto personalizado con una etiqueta,
  // un ícono y estilos definidos para el formulario.


  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData icon,
    int maxLines = 1,
  }) {
    return Padding(
      // Espaciado inferior entre este campo y el siguiente
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea a la izquierda
        children: [
          // Etiqueta del campo (título encima del campo de entrada)
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: grayDark, // Color oscuro definido en la paleta
            ),
          ),
          SizedBox(height: 8), // Espacio entre etiqueta y el campo


          Container(
            decoration: BoxDecoration(
              color: backgroundGray, // Fondo
              borderRadius: BorderRadius.circular(8), // Bordes
              border: Border.all(color: grayLight),   // Borde
            ),

            // Campo de texto
            child: TextField(
              maxLines: maxLines, // Define cuántas líneas acepta el campo
              decoration: InputDecoration(
                hintText: hint, // Texto de sugerencia dentro del campo
                hintStyle: TextStyle(color: grayLight),
                prefixIcon: Icon(icon, color: secondaryGray), // Ícono a la izquierda
                border: InputBorder.none, // Elimina borde por defecto del TextField
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



//genera un campo desplegable de selección de género con estilo visual consistente, incluyendo borde redondeado, color personalizado y opciones fijas.
  Widget _buildDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Género',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: backgroundGray,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: grayLight),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: SizedBox(),
            hint: Text(
              'Seleccionar',
              style: TextStyle(color: grayLight),
            ),
            icon: Icon(Icons.arrow_drop_down, color: secondaryGray),
            items: ['Masculino', 'Femenino', 'Otro']
                .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
                .toList(),
            onChanged: (String? value) {},
          ),
        ),
      ],
    );
  }

//Muestra un texto explicativo seguido de una caja con 4 opciones (checkboxes) donde el usuario puede seleccionar sus intereses.
  Widget _buildCheckboxSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Intereses (seleccione todos los que apliquen):',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark,
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundGray,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: grayLight),
          ),
          child: Column(
            children: [
              _buildCheckboxTile('Tecnología', Icons.computer),
              _buildCheckboxTile('Deportes', Icons.sports_soccer),
              _buildCheckboxTile('Música', Icons.music_note),
              _buildCheckboxTile('Lectura', Icons.book),
            ],
          ),
        ),
      ],
    );
  }

//Esta función crea un checkbox personalizado con ícono y texto.
  Widget _buildCheckboxTile(String title, IconData icon) {
    return CheckboxListTile(
      title: Row(
        children: [
          Icon(icon, size: 20, color: secondaryGray),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(color: grayDark),
          ),
        ],
      ),
      value: false,
      onChanged: (bool? value) {},
      activeColor: primaryNavy,
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }

//Crea una sección visual con tres opciones tipo radio button.
//
// El usuario podrá seleccionar solo una de las tres opciones: Principiante, Intermedio o Avanzado.
  Widget _buildRadioSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nivel de experiencia en tecnología:',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark,
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundGray,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: grayLight),
          ),
          child: Column(
            children: [
              _buildRadioTile('Principiante', 'beginner'),
              _buildRadioTile('Intermedio', 'intermediate'),
              _buildRadioTile('Avanzado', 'advanced'),
            ],
          ),
        ),
      ],
    );
  }

}
