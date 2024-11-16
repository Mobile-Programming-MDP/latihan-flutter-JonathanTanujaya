import 'package:flutter/material.dart';
import 'package:wisata_candi/ItemCard.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 1 : AppBar
      appBar: AppBar(
        title: Text("Wisata Candi"),
      ),

      //TODO 2 : GridViewBuilder
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              padding: EdgeInsets.all(8),
              itemCount: candiList.length,
              itemBuilder: ( context,  index) { 
                Candi candi = candiList[index];
                return Itemcard(
                  candi: candi,
                );

               },
              ),


      //TODO 3 : ItemCard
    );
  }
}
