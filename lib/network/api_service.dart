 import 'package:dio/dio.dart';
import 'package:news_app/model/article.dart';


class ApiService {
  late String general;
  Dio dio = Dio();
  get({ required String category }) async{
    var response = await dio.get("https://newsapi.org/v2/top-headlines?q=&apiKey=7a7f622ca37244cebf89ebfa08f7843a&category=$category");
  Map <String,dynamic> json = response.data;
List <Article> articales = [];
for(var i in json ["articles"]) {
  articales.add(Article(
      image: i["urlToImage"], title: i["title"], desc: i["description"]));
}


  return articales;

}

  }


