import 'package:flutter/material.dart';
import '../model/category.dart';
import 'category_news.dart';
class categorylistview extends StatelessWidget {
 categorylistview({super.key});

  final List<Category> categories = [
    Category(name: "General", image: "https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/17735/production/_110135069_uk-election_composite_europe_v2.png"),
    Category(name: "Sports", image: "https://images.pexels.com/photos/6504833/pexels-photo-6504833.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    Category(name: "Technology", image: "https://images.pexels.com/photos/2007647/pexels-photo-2007647.jpeg"),
    Category(name: "Business", image: "https://images.pexels.com/photos/7693156/pexels-photo-7693156.jpeg"),
    Category(name: "Health", image: "https://media.istockphoto.com/id/1473559434/photo/giving-her-patient-strict-instructions-for-recovery.jpg?s=1024x1024&w=is&k=20&c=XupZFSSRXQwzm6gOEqcO-3Pv_UK8auSYNxRPd0Anl-Y="),
    Category(name: "Science", image: "https://www.training.com.au/wp-content/uploads/science-stem-feature.png?width=720&height=420"),
    Category(name: "Entertainment", image: "https://burst.shopifycdn.com/photos/dj-crowd.jpg?width=1000&format=pjpg&exif=0&iptc=0"),


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 150,
    child: ListView.builder(
scrollDirection: Axis.horizontal,
itemBuilder:(context , index){
return CategoryNews(category: categories[index],);

}, itemCount:categories.length ))

;
  }
}
