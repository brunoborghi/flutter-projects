import 'package:flutter/material.dart';
import 'package:form_cadastro_produto/models/Produto.dart';

class FormularioCadastroProduto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioCadastroProdutoState();
  }
}

class FormularioCadastroProdutoState extends State<FormularioCadastroProduto> {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrando Produto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              TextField(
                controller: _controladorQuantidade,
                decoration: InputDecoration(
                  labelText: 'Quantidade',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _controladorValor,
                decoration: InputDecoration(
                  labelText: 'Valor',
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final int quantidade =
                    int.tryParse(_controladorQuantidade.text);
                    final double valor = double.tryParse(_controladorValor.text);

                    final Produto produtoNovo = Produto(nome, quantidade, valor);
                    print(produtoNovo);
                  },
                  child: Text('Cadastrar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}