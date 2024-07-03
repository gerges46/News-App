
import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';

import 'package:newsapp/widgets/newst_tile.dart';

class NewsListView extends StatelessWidget {
 NewsListView({
    super.key, required this.articles,
  });

 final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return

        /* ListView.builder(
     //shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.only(bottom:22.0),
        child: NewsTile(),
      );
    }); */

        SliverList(
            delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      },
    ));
  }
}
