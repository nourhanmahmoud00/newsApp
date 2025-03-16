import 'package:flutter/material.dart';
import '../widgets/article_item.dart';
import '../widgets/article_listview.dart';
import '../widgets/category_lstview.dart';
import '../widgets/category_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(
          "News App",
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
          SliverToBoxAdapter(child: categorylistview()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "General News",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
          ),
          ArticleListview()

          
        ],
      ),
    );
  }
}
