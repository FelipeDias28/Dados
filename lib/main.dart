import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    Dadoos(),
  );
}

class Dadoos extends StatefulWidget {
  Dadoos({key}) : super(key: key);

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerdo = 1;
  int numeroDadoDireito = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text(
            'Dadoos',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      numeroDadoEsquerdo = Random().nextInt(6) +
                          1; // Gera numeros aleatório de 0 ... 5
                    });
                    print('Botão esquerdo pressionado');
                  },
                  child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      numeroDadoDireito = Random().nextInt(6) + 1;
                    });
                    print('Botão direito pressionado');
                  },
                  child: Image.asset('imagens/dado$numeroDadoDireito.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
