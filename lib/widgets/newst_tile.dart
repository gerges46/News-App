import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          child: Image.network(
            articleModel.image??
            "https://images.unsplash.com/photo-1508612761958-e931d843bdd5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fG5ld3N8ZW58MHx8MHx8fDA%3D",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(articleModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),

        
        ),
        const SizedBox(height: 8,),
        Text(articleModel.subTitle??"",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.grey,fontSize: 14,),
        
        )
      ],
    );
  }
}
