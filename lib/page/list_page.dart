import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> daftarPertemuan = [
      "Pertemuan 1",
      "Pertemuan 2",
      "Pertemuan 3",
      "Pertemuan 4",
      "Pertemuan 5",
    ];

    return ListView.builder(
      itemCount: daftarPertemuan.length,

      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.book),
            title: Text(daftarPertemuan[index]),
          ),
        );
      },
    );
  }
}