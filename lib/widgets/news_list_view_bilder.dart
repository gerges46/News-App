import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';

import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/error_massage.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({

    super.key, required this.category,
  });
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
  
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  //List<ArticleModel> articles = [];
  var future;
  @override
  void initState() {
  
    super.initState();
    // if you have var in state satafullwidget and you want to access it you use widget
   future= NewsService(Dio()).getTopHeadLine(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:future ,
        builder: (context, snapshot) {
          snapshot.data;
          if (snapshot.hasData) {
            return NewsListView(
              // snapshot is contan a request data
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: ErrorMessage(message: 'oops there was an error!',),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });

    /* isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsListView(
                articles: articles,
              )
            : SliverToBoxAdapter(
                child: Text("ops there was an error!"),
              ); */
  }
}

