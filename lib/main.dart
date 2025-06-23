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
  static const Color grayDark = Color(0xFF374151);
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
                    offset: Offset(0, 4),
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            //formulario principal
            Container(
              //contenedor del formulario
              padding: EdgeInsets.all(24),
              //decoracion del forumario
              decoration: BoxDecoration(
                //color blanco como principal
                color: Colors.white,
                //borde redondeados
                borderRadius: BorderRadius.circular(12),
                //box shadow para darle profundidad como si fuera un elemento flotante
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
                //declaracion de los elementos hijos dentro del formulario
                children: [
                  _buildSectionTitle('Informacion basica', Icons.info_outline),

                  //creacion del elemento para nombre
                  _buildTextField(
                    label: 'Nombre Completo',
                    hint: 'Ingrese su nombre completo',
                    icon: Icons.person,
                  ),

                  //creacion del elemento para correo electronico
                  _buildTextField(
                    label: 'Correo Electronico',
                    hint: 'ejemplo@correo.com',
                    icon: Icons.email,
                  ),

                  _buildTextField(
                      label: 'Telefono',
                      hint: '+591 7131242',
                      icon: Icons.phone
                  ),

                  //espacioado definido para continuar con la seccion
                  SizedBox(height: 24),

                  //seccion informacion personal
                  _buildSectionTitle('Informacion persona', Icons.person_outline),

                  //creacion de la nueva fila
                  Row(
                    //creacion del elemento hijo para edad en informacion personal
                    children: [
                      Expanded(
                          child: _buildTextField(
                              label: 'Edad',
                              hint: '25',
                              icon: Icons.cake,
                          )
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //declaracion de los elementos para ser reutilizables en el formulario
  Widget _buildSectionTitle(String title, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        //declaracion de elemento hijo
        children: [
          Icon(
            icon,
            color: primaryNavy,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryNavy,
            ),
          ),
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

  //declaracion del widget generico para texto
  Widget _buildTextField({
    //declaracion de elementos necesarios para el widget
    required String label,
    required String hint,
    required IconData icon,
    int maxLines = 1,
  }) {
    //creacion del elemento de retorno
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //etiqueta del campo
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: grayDark,
            ),
          ),
          SizedBox(height: 8), //espacio entre la etiqueta y el campo de texto
          //creacion del container principal del texto para estelis
          Container(
            decoration: BoxDecoration(
              color: backgroundGray,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: grayLight),
            ),
            //elemento hijo para la entrada del texto
            child: TextField(
              maxLines: maxLines,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: grayLight),
                prefixIcon: Icon(icon, color: secondaryGray),
                border: InputBorder.none,
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

  //widget para seleccion multiple
  Widget _buildDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //alinea al inicio
      children: [
        //creacion de la etiqueta para genero
        Text(
          //texto del campo
          'Genero',
          //creacion de estilos
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark,
          ),
        ),
        SizedBox(height: 8),
        //creacion del contenedor junto a sus estilos
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: backgroundGray,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: grayLight),
          ),
          //crecion del campo select con sus opciones
          child: DropdownButton<String>(
            isExpanded: true,
            underline: SizedBox(),
            hint: Text(
              'Seleccionar',
              style: TextStyle(color: grayLight),
            ),
            icon: Icon(Icons.arrow_drop_down, color: secondaryGray),
            //declaracion de los campos que seran elegibles
            items: ['Masculino', 'Femenino', 'Otro']
                .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
              .toList(),
            onChanged: (String? value) {},
          ),
        )
      ],
    );
  }

  //creacion de widget chekbox para seleccionar
  Widget _buildCheckboxSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //definicion del texto para la seccion de check
        Text(
          'Intereses (seleccione todos los que apliquen):',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark,
          ),
        ),
        SizedBox(height: 12),
        //contenedor del contenido de la seccion
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundGray,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: grayLight),
          ),
          child: Column(
            //definicion de los elementos seleccionable
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

  //definicion del encabezado para la seccion de check
  Widget _buildCheckboxTile(String title, IconData icon) {
    return CheckboxListTile(
      title: Row(
        //definicion para el estilo
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

  //creacion de los radio buttom
  Widget _buildRadioSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nivel de experiencia en la tecnologia',
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
            //declaracion de los elementos para radio buttom
            children: [
              _buildRadioTile('Principiante', 'beginer'),
              _buildRadioTile('Intermedio', 'intermediante'),
              _buildRadioTile('Avanzado', 'advancend'),
            ],
          ),
        )
      ],
    );
  }
  //creacion del titulo
  Widget _buildRadioTile(String title, String value){
    return RadioListTile<String>(
      //definicion
      title: Text(
        title,
        style: TextStyle(color: grayDark),
      ),
      //valores y estilos
      value: value,
      groupValue: 'beginer',
      onChanged: (String? value) {},
      activeColor: primaryNavy,
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }
}