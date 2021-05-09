import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    // Gerar números randomicos
    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do Dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            /* decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber)), */
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                RaisedButton(
                    child: Text("Nova Frase",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    color: Colors.green,
                    onPressed: _gerarFrase)
              ],
            ),
          ),
        ));
  }
}
