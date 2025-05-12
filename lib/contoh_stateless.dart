import 'package:flutter/material.dart';

class ContohStateless extends StatelessWidget {
  // Variabel counter dideklarasikan di sini, tetapi tidak dapat diubah
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Stateless"),
      backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Column(
        children: [
          Text("Nomor : $counter"), // Menampilkan nilai counter
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Tidak ada efek pada counter karena ini Stateless
                },
                child: const Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Tidak ada efek pada counter karena ini Stateless
                },
                child: const Text("Reset"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}