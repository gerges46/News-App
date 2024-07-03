
import 'package:flutter/material.dart';
import 'package:newsapp/model/catogery_model.dart';
import 'package:newsapp/widgets/catogery_card.dart';

class CatogerysListView extends StatelessWidget {
CatogerysListView({
    super.key,
  });
final List<CatogeryModel> catogers=[
  CatogeryModel(catogeryname: "business", img: "assets/images/business.avif"),
  CatogeryModel(catogeryname: "sports", img: "assets/images/kevin-mueller-Q-fL04RhuMg-unsplash.jpg"),
  CatogeryModel(catogeryname: "science", img: "assets/images/science.avif"),
  CatogeryModel(catogeryname: "health", img: "assets/images/health.avif"),
  CatogeryModel(catogeryname: "general", img: "assets/images/clark-tibbs-oqStl2L5oxI-unsplash.jpg"),
  CatogeryModel(catogeryname: "entertainment", img: "assets/images/entertaiment.avif"),
 
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catogers.length,
        itemBuilder: (context, index) {
        return CatogeryCard(
          catogery: catogers[index],
        );
      }),
    );
  }
}
