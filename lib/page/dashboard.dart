import 'package:flutter/material.dart';
import '../pertemuan/pertemuan6.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text("Pertemuan 6"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const Pertemuan6Page(),
              ),
            );
          },
        ),
      ),
    );
  }
}