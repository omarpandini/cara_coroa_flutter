// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image(image: AssetImage('images/logo.png')),
          GestureDetector(
            child: Image(image: AssetImage('images/botao_jogar.png')),
            onTap: () {
              setState(() {
                int num = Random().nextInt(2);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultado(num),
                    ));
              });
            },
          )
        ],
      ),
    );
  }
}
