import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';
class ArticalItem extends StatelessWidget {
  final Article article;

  const ArticalItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  article.image??"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fcoauthors&psig=AOvVaw1qmnIQi1u2K6W8Ma6pofQV&ust=1741998357240000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPD0--KniIwDFQAAAAAdAAAAABAq"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.red,),),
          Text(
              maxLines:3,
              overflow: TextOverflow.ellipsis,
              article.desc??"No Description", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey,
                backgroundColor: Colors.black54,))],

      ),
    );
  }
}
