import 'package:flutter/material.dart';

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
                      numeroDadoEsquerdo = 3;
                    });
                    print('Botão esquerdo pressionado');
                  },
                  child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
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
