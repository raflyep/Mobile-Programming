import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // perbaiki constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes Rafli Eka Putra',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Adidas Shoes New 2024'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key); // perbaiki constructor

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            const Spacer(), // Spacer untuk menjaga jarak
            CircleAvatar(
              radius: 20, // Ukuran radius avatar
              backgroundColor: Colors.grey[300], // Warna latar belakang avatar
              child: const Icon(
                Icons.person,
                color: Colors.black, // Warna ikon avatar
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            imageUrl:'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            shoeName: 'Adidas Galaxy 6',
            shoePrice: 1000000, // harga dalam bentuk numerik (int/double)
            backgroundColor: Colors.purple.withOpacity(0.2), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            shoeName: 'Adidas Runfalcon 3.1',
            shoePrice: 1999900, // harga dalam bentuk numerik (int/double)
            backgroundColor: const Color.fromARGB(255, 170, 212, 0)
                .withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:"https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png",
            shoeName: 'Adidas Galaxy 6',
            shoePrice: 1000000, // harga dalam bentuk numerik (int/double)
            backgroundColor: Colors.purple.withOpacity(0.2), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            shoeName: 'Adidas Runfalcon 3.1',
            shoePrice: 1999900, // harga dalam bentuk numerik (int/double)
            backgroundColor: const Color.fromARGB(255, 170, 212, 0)
                .withOpacity(0.2), // Background cyan
          ),
          
          
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final int shoePrice; // Harga disimpan sebagai numerik

  final Color backgroundColor;

  const ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(shoeName),
        subtitle: Text('Rp. ${shoePrice.toStringAsFixed(0)},-'),
      ),
    );
  }
}