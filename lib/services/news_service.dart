import 'package:dio/dio.dart';
import 'package:newsapp/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

Future <List<ArticleModel>>  getTopHeadLine({required String category}) async {
    try {
  Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=ef0d1d4fb25a423bb6368e6d81681451&category=$category");
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList = [];
  
  // print(articles);
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
  }
  print(articlesList);
  
  /*  for (var article in articles) {
    print(article['author']);
     
   } */
   return articlesList;
} catch (e) {
return [];
}
  }
}
