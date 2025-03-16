import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';
class CategoryNews extends StatelessWidget {
  final Category category;
 CategoryNews({super.key,  required this.category});



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {Navigator.pushNamed(context, 'S2',  arguments: category.name,);},
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: Text(category.name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
              backgroundColor: Colors.black54)),
          backgroundImage: NetworkImage(category.image ),
        ),
      ),
    );
  }
}
