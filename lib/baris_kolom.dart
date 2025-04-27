import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BarisKolomPage(),
    );
  }
}

class BarisKolomPage extends StatelessWidget {
  const BarisKolomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baris dan Kolom'),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Baris 1, Kolom 1'),
                Text('Baris 1, Kolom 2'),
                Text('Baris 1, Kolom 3'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Baris 2, Kolom 1'),
                Text('Baris 2, Kolom 2'),
                Text('Baris 2, Kolom 3'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Baris 3, Kolom 1'),
                Text('Baris 3, Kolom 2'),
                Text('Baris 3, Kolom 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
