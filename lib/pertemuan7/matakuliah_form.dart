import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'matakuliah_detail.dart';

class MatakuliahForm extends StatefulWidget {
  const MatakuliahForm({super.key});

  @override
  State<MatakuliahForm> createState() => _MatakuliahFormState();
}

class _MatakuliahFormState extends State<MatakuliahForm> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  void dispose() {
    _mataKuliahCtrl.dispose();
    _sksCtrl.dispose();
    _semesterCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Mata Kuliah"),
      backgroundColor: CupertinoColors.activeBlue,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              mataKuliahField(),
              const SizedBox(height: 10),
              sksField(),
              const SizedBox(height: 10),
              semesterField(),
              const SizedBox(height: 20),
              tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget mataKuliahField() {
    return TextFormField(
      controller: _mataKuliahCtrl,
      decoration: const InputDecoration(
        labelText: "Mata Kuliah",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Mata kuliah tidak boleh kosong";
        }
        return null;
      },
    );
  }

  Widget sksField() {
    return TextFormField(
      controller: _sksCtrl,
      decoration: const InputDecoration(
        labelText: "SKS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "SKS tidak boleh kosong";
        }
        final sks = int.tryParse(value);
        if (sks == null || sks <= 0) {
          return "Masukkan SKS valid (angka positif)";
        }
        return null;
      },
    );
  }

  Widget semesterField() {
    return TextFormField(
      controller: _semesterCtrl,
      decoration: const InputDecoration(
        labelText: "Semester",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Semester tidak boleh kosong";
        }
        return null;
      },
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatakuliahDetail(
                mataKuliah: _mataKuliahCtrl.text.trim(),
                sks: int.parse(_sksCtrl.text.trim()),
                semester: _semesterCtrl.text.trim(),
              ),
            ),
          );
        }
      },
      child: const Text("Simpan"),
    );
  }
}