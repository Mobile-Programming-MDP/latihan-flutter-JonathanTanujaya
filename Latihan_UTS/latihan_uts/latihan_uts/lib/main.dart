import 'package:flutter/material.dart';
import 'package:latihan_uts/Latihan_Screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LatihanScreen(),
    );
  }
}
