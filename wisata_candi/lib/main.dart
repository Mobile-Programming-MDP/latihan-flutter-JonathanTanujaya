import 'package:flutter/material.dart';
import 'package:wisata_candi/ProfileScreen.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';

import 'package:wisata_candi/models/candi.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DetailScreen(candi: candiList[0]),
      home: ProfileScreen(),
    );
  }
}
