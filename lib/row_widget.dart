import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Row"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Text 1"),
          SizedBox(width: 20),
          Text("Text 2"),
          SizedBox(width: 20),
          Text("Text 3"),
        ],
      ),
    );
  }
}