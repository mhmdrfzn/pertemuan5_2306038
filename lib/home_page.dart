import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const HomePage({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          Text('Harga: $price', style: TextStyle(fontSize: 15)),
          Text('Nama: $name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text('Lihat Detail'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            
          ),
        ],
      )
    );
  }
}