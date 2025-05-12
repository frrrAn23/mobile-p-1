import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatakuliahDetail extends StatelessWidget {
  final String mataKuliah;
  final int sks;
  final String semester;

  const MatakuliahDetail({
    super.key,
    required this.mataKuliah,
    required this.sks,
    required this.semester,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Mata Kuliah"),
      backgroundColor: CupertinoColors.activeBlue,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mata Kuliah: $mataKuliah",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "SKS: $sks",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Semester: $semester",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}