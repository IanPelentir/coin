import 'package:flutter/material.dart';

class CryptoDetails extends StatelessWidget {
  final Map<String, String> crypto;

  CryptoDetails({required this.crypto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(crypto['name']!),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${crypto['name']}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Abreviação: ${crypto['abbreviation']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Valor: \$${crypto['value']}', style: TextStyle(fontSize: 18)),
            // Adicione mais informações aqui, se necessário
          ],
        ),
      ),
    );
  }
}
