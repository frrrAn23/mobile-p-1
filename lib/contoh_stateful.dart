import 'package:flutter/material.dart';

class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  int counter = 0; // Variabel counter yang dapat diubah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Stateful"),
      backgroundColor: Colors.blueAccent,
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
                  setState(() {
                    counter++; // Mengubah nilai counter dan memperbarui tampilan
                  });
                },
                child: const Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0; // Mengatur counter ke 0 dan memperbarui tampilan
                  });
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