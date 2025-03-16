import 'package:flutter/material.dart';

import '../model/article.dart';
import '../network/api_service.dart';
import '../widgets/article_item.dart';
import '../widgets/article_listview.dart';

class Newsscreen extends StatelessWidget {
  Newsscreen({super.key, required this.category});

  List<Article> filteredArticles = [];

  bool isLoading = true;

  final String category;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(
         category,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),

      body: CustomScrollView(
        slivers: [
          ArticleListview(category: category,)
        ],
      ),
    );
  }
}
