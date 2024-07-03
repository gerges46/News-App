/* 
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/newst_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles=[];
  bool isLoading=true;

  @override
  void initState() {
   
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles=await NewsService(Dio()).getNews();
    setState(() {
      isLoading=false;
    });
  }
  @override
  Widget build(BuildContext context) {

 
    return /* ListView.builder(
     //shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.only(bottom:22.0),
        child: NewsTile(),
      );
    }); */

   isLoading?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
:  SliverList(delegate: SliverChildBuilderDelegate(
                childCount: articles.length,
                (context, index) {
                  return  Padding(
                    padding: EdgeInsets.only(bottom:22),
                    child: NewsTile(
                      articleModel: articles[index],
                    ),
                  );
                },
              ));
  }
} */
