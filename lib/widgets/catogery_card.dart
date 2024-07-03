import 'package:flutter/material.dart';
import 'package:newsapp/model/catogery_model.dart';
import 'package:newsapp/views/catogery_view.dart';

class CatogeryCard extends StatelessWidget {
  CatogeryCard({
    super.key,
    required this.catogery,
  });
  final CatogeryModel catogery;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoryView(category: catogery.catogeryname,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          child: Center(
              child: Text(
            catogery.catogeryname,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
          decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage(catogery.img),
                  fit: BoxFit.fill),
              color: Colors.red,
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
    );
  }
}
