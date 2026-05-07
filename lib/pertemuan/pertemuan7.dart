import 'package:flutter/material.dart';

class Pertemuan7Page extends StatefulWidget {
  const Pertemuan7Page({super.key});

  @override
  State<Pertemuan7Page> createState() =>
      _Pertemuan7PageState();
}

class _Pertemuan7PageState
    extends State<Pertemuan7Page> {

  String? jenisKelamin = "Laki-laki";

  String? ukuranBaju = "M";

  String? toggleRadio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 7"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              "RadioListTile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text("Laki-laki"),
              value: "Laki-laki",
              groupValue: jenisKelamin,

              onChanged: (value) {
                setState(() {
                  jenisKelamin = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Perempuan"),
              value: "Perempuan",
              groupValue: jenisKelamin,

              onChanged: (value) {
                setState(() {
                  jenisKelamin = value.toString();
                });
              },
            ),

            const SizedBox(height: 20),

            const Text(
              "Radio Horizontal",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [

                Radio(
                  value: "S",
                  groupValue: ukuranBaju,

                  onChanged: (value) {
                    setState(() {
                      ukuranBaju = value.toString();
                    });
                  },
                ),

                const Text("S"),

                Radio(
                  value: "M",
                  groupValue: ukuranBaju,

                  onChanged: (value) {
                    setState(() {
                      ukuranBaju = value.toString();
                    });
                  },
                ),

                const Text("M"),

                Radio(
                  value: "L",
                  groupValue: ukuranBaju,

                  onChanged: (value) {
                    setState(() {
                      ukuranBaju = value.toString();
                    });
                  },
                ),

                const Text("L"),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              "Toggleable Radio",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text("Aktifkan"),
              value: "aktif",
              groupValue: toggleRadio,
              toggleable: true,

              onChanged: (value) {
                setState(() {
                  toggleRadio = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}