import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';
import 'package:news_app/network/api_service.dart';

import 'article_item.dart';

class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key, required this.category});
  final String category;
  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {

  List<Article>? x;

  _ArticleListviewState();
  void initState() {
    super.initState();
    getNews(category: widget.category);}

  getNews({ required String category }) async{
    ApiService apiService = ApiService(categoryname: category, dio: Dio());
    x = await apiService.get(category: category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return x == null ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : SliverList.builder(

          itemBuilder: (context, index) {
            return ArticalItem(article: x![index]);
          },
          itemCount: x!.length,
        );
    ;
  }
}
