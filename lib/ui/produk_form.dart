import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {

  final TextEditingController kodeProdukCtrl =
      TextEditingController();

  final TextEditingController namaProdukCtrl =
      TextEditingController();

  final TextEditingController hargaProdukCtrl =
      TextEditingController();

  Widget _textboxKodeProduk() {
    return TextField(
      controller: kodeProdukCtrl,
      decoration: const InputDecoration(
        labelText: "Kode Produk",
      ),
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      controller: namaProdukCtrl,
      decoration: const InputDecoration(
        labelText: "Nama Produk",
      ),
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      controller: hargaProdukCtrl,
      decoration: const InputDecoration(
        labelText: "Harga Produk",
      ),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProdukCtrl.text,
              namaProduk: namaProdukCtrl.text,
              hargaProduk: hargaProdukCtrl.text,
            ),
          ),
        );
      },
      child: const Text("Simpan"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Produk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }
}