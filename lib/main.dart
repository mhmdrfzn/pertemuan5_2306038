import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
  
  final String name = 'Iphone 17';
  final String price = 'Rp 17.000.000';
  final String imageUrl = 'https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/iphone-17-hero.png';
  final String description = 'Aluminium design, Ceramic Shield 2 front, Colour‑infused glass back (Black, Mist Blue, Sage, Lavender)';


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(name: name, price: price, imageUrl: imageUrl),
        '/second': (context) => SecondPage(name: name, price: price, imageUrl: imageUrl, description: description),
      }
    );
  }
}

