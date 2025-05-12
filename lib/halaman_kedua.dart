import 'package:flutter/material.dart';
import './widget/card_widget.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua"),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Center(
        child: Text("Selamat datang di Halaman Kedua!"),
      ),
    );
  }
}