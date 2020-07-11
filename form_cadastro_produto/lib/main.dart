import 'package:flutter/material.dart';
import 'package:form_cadastro_produto/screens/produto/cadastro.dart';
import 'models/Produto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioCadastroProduto(),
    );
  }
}

