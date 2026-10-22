import 'package:ecotec_app/widgets/campos_widgets.dart';
import 'package:flutter/material.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formularios')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          child: Column(
            children: [
              CampoTexto(etiqueta: 'Nombres', textoAyuda: 'Ingresar nombres'),
              SizedBox(height: 30),
              CampoTexto(etiqueta: 'Apellidos', textoAyuda: 'Ingresa Apellido'),

              SizedBox(height: 30),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Correo electronico',
                  hintText: 'ejemplo@correo.com',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

