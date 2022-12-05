// ignore_for_file: use_key_in_widget_constructors, unnecessary_this, must_be_immutable

import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int _numMoeda = 0;

  Resultado(int numMoeda) {
    this._numMoeda = numMoeda;
  }

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  var nomeImage = ['moeda_cara.png', 'moeda_coroa.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Text('Resultado ' + widget._numMoeda.toString()),
            Image(image: AssetImage('images/' + nomeImage[widget._numMoeda])),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Volta para a tela anterior
                print('clicou');
              },
              child: Image(image: AssetImage('images/botao_voltar.png')),
            )
          ],
        ),
      ),
    );
  }
}
