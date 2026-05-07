import 'package:flutter/material.dart';
import 'list_page.dart';

class PertemuanPage extends StatelessWidget {
  const PertemuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Pertemuan"),
      ),

      body: const ListPage(),
    );
  }
}