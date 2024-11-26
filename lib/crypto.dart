import 'package:flutter/material.dart';

class crypto extends StatefulWidget {
  @override
  State<crypto> createState() => _cryptoState();
}

class _cryptoState extends State<crypto> {
  final List<Map<String, String>> cryptos = [
    {'name': 'Bitcoin', 'abbreviation': 'BTC', 'value': '93,645.86'},
    {'name': 'Ethereum', 'abbreviation': 'ETH', 'value': '3,431.63'},
    {'name': 'Tether', 'abbreviation': 'USDT', 'value': '1.00'},
    {'name': 'BNB', 'abbreviation': 'BNB', 'value': '639.19'},
    {'name': 'Solana', 'abbreviation': 'SOL', 'value': '236.35'},
    {'name': 'USDC', 'abbreviation': 'USDC', 'value': '1.00'},
    {'name': 'XRP', 'abbreviation': 'XRP', 'value': '1.43'},
    {'name': 'Lido Staked Ether', 'abbreviation': 'STETH', 'value': '3,427.12'},
    {'name': 'Dogecoin', 'abbreviation': 'DOGE', 'value': '0.4011    '},
  ];

  final List <Map<String, String>> mais = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Preço de Cripto moedas"),
        centerTitle: true,
      ),
       body: ListView(
         children: [ Container(
         child: Column(
           children: cryptos.map((crypto) {
             return Container(
               margin: EdgeInsets.all(8.0),
               padding: EdgeInsets.all(16.0),
               decoration: BoxDecoration(
                 color: Colors.white60,
                 borderRadius: BorderRadius.circular(8.0),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(crypto['name']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                       Text(crypto['abbreviation']!, style: TextStyle(fontSize: 14)),
                     ],
                   ),
                   Text('\$${crypto['value']!}', style: TextStyle(fontSize: 16)),
                 ],
               ),
             );
           }).toList(),
         ),
       ),],


      ));


  }
}
