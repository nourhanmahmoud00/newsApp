import 'package:flutter/material.dart';

import '../model/article.dart';
import '../network/api_service.dart';
import '../widgets/article_item.dart';

class Newsscreen extends StatefulWidget {
  Newsscreen({super.key});

  @override
  State<Newsscreen> createState() => _NewsscreenState();
}

class _NewsscreenState extends State<Newsscreen> {
  List<Article> filteredArticles = [];
  bool isLoading = true;
  late String category;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)!.settings.arguments as String;
    _getArticles() async {
      {
        final articles = await ApiService().get();
        setState(() {
          filteredArticles =
              articles
                  .where((article) => article.category == category)
                  .toList();
          isLoading = false;
        });
      }
      ;
    }

    _getArticles();
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(
          "$category",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : filteredArticles.isNotEmpty
              ? ListView.builder(
                itemBuilder: (context, index) {
                  return ArticalItem(article: filteredArticles[index]);
                },
                itemCount: filteredArticles.length,
              )
              : Center(
                child: Text(
                  "not avilable",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
    );
  }
}
