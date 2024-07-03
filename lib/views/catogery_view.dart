import 'package:flutter/material.dart';
import 'package:newsapp/views/home_screen.dart';
import 'package:newsapp/widgets/news_list_view_bilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
        },icon: Icon(Icons.arrow_back),color: Colors.red,),
      ]), 
      body:CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category,)
        ],
      ),
    );
  }
}