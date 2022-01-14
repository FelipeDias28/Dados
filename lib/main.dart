import 'package:flutter/material.dart';

void main() {
  return runApp(
    Dadoos(),
  );
}

class Dadoos extends StatelessWidget {
  const Dadoos({key}) : super(key: key);

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
                    print('Botão esquerdo pressionado');
                  },
                  child: Image.asset('imagens/dado1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print('Botão direito pressionado');
                  },
                  child: Image.asset('imagens/dado1.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
