import 'package:flutter/material.dart';
import './widget/card_widget.dart';
import './halaman_kedua.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parsing Data(Halaman Pertama)"),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),

      body: ListView(
        children: [
          CardWidget(judul: "Universitas Bina Sarana Informatika", icon: Icons.account_balance),
          CardWidget(judul: "Pengenalan Flutter", icon: Icons.add_home_work),
          CardWidget(judul: "Parsing Data", icon: Icons.add_location),
          CardWidget(judul: "Mobile Programming", icon: Icons.android),
          // Card navigasi ke Halaman Kedua
          CardWidget(
            judul: "Halaman Kedua",
            icon: Icons.add_home_rounded,
            isLastItem: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanKedua()),
              );
            },
          ),
        ],
      ),
    );
  }
}
