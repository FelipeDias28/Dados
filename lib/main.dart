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
        body: Row(
          children: [
            Expanded(
              child: Image.asset('imagens/dado1.png'),
            ),
            Expanded(
              child: Image.asset('imagens/dado1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
