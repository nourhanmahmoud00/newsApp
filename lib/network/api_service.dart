 import 'package:dio/dio.dart';
import 'package:news_app/model/article.dart';

class ApiService {
  Dio dio = Dio();
  get() async{
    var response = await dio.get("https://newsapi.org/v2/top-headlines?q=trump&apiKey=7a7f622ca37244cebf89ebfa08f7843a");
  Map <String,dynamic> json = response.data;
List <Article> articales = [];
for(var i in json ["articles"]) {
  articales.add(Article(
      image: i["urlToImage"], title: i["title"], desc: i["description"]));
}


  return articales;

}

  }


