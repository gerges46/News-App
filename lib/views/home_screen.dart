
import 'package:flutter/material.dart';

import 'package:newsapp/widgets/catogerys_list_view.dart';

import 'package:newsapp/widgets/news_list_view_bilder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                "App",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
/*   child:   Column(
  
    children: [
  
  CatogerysListView(),
  
  SizedBox(height: 32,),
  
  Expanded(child: NewsListView()),
  
    ],
  
  ), */
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CatogerysListView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
             /*  SliverList(delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return NewsTile();
                },
              )), */


              NewsListViewBuilder(category: 'general',),
           /*    SliverToBoxAdapter(
                child: NewsListView(),
              ), */
            ],
          ),
        ));
  }
}
