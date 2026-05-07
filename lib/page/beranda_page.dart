import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  void tampilToast() {
    Fluttertoast.showToast(
      msg: "Login Berhasil",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                tampilToast();
              },
              child: const Text("Tampilkan Toast"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Informasi"),
                      content:
                          const Text("Ini adalah Alert Dialog"),

                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text("Tampilkan Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}