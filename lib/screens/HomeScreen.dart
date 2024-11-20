import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/widgets/ItemCard.dart';

import '../models/candi.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1: Buat AppBar.
      appBar: AppBar(
        title: const Text("Wisata Candi"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8.0),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            Candi m_candi = candiList[index];
            return ItemCard(candi: m_candi);
          },
      ),

      // TODO: 2: Buat body dengan GridView.Builder.
      // TODO: 3: Buat ItemCard sebagai return value dari GridView.builder
    );
  }
}