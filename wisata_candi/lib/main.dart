import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

void main() {
  runApp(const  ());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}