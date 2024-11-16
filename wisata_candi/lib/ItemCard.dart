import 'package:flutter/material.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/models/candi.dart';

class Itemcard extends StatelessWidget {
//TODO 1 Deklarasi variable yang dibutuhkan
  final Candi candi;
  const Itemcard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
//TODO 6. Implementasi routing ke DetailScreen

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(candi: candi)));
      },
      child: Card(
        //TODO: 2 terapkan parameter shape, margin dan elevation dari  Cari
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO 3  Image sebagai anak dari column
            Expanded(
              //TODO 7. Implementasi Hero Animation
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //TODO 4  Text anak dari column
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                candi.name,
                style: TextStyle(fontSize: 16),
              ),
            ),
            //TODO 5  Text anak dari column
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                candi.type,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
