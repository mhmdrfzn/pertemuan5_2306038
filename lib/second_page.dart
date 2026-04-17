import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  const SecondPage({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
        backgroundColor: const Color.fromARGB(255, 0, 170, 255),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 450,
            width: 500,
            fit: BoxFit.cover,
          ),
          Text('Harga: $price', style: TextStyle(fontSize: 15)),
          SizedBox(height: 5),
          Text('Nama: $name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pop(context);
            },
            
          ),
        ],
      )
    );
  }
}