import 'package:flutter/material.dart';

class Pertemuan6Page extends StatefulWidget {
  const Pertemuan6Page({super.key});

  @override
  State<Pertemuan6Page> createState() =>
      _Pertemuan6PageState();
}

class _Pertemuan6PageState
    extends State<Pertemuan6Page> {

  bool checkboxDasar = false;

  bool checkboxList = false;

  bool? triState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 6"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              "Checkbox Dasar",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Checkbox(
              value: checkboxDasar,

              onChanged: (value) {
                setState(() {
                  checkboxDasar = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            const Text(
              "Checkbox List Tile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            CheckboxListTile(
              title: const Text("Saya Setuju"),
              value: checkboxList,

              onChanged: (value) {
                setState(() {
                  checkboxList = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            const Text(
              "Tri-State Checkbox",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Checkbox(
              tristate: true,
              value: triState,

              onChanged: (value) {
                setState(() {
                  triState = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}