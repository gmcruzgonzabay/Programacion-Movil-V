


import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String etiqueta;
  final String textoAyuda;

  const new({super.key, required this.etiqueta, required this.textoAyuda});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: etiqueta,
        border: OutlineInputBorder(),
      ),
    );
  }
}
