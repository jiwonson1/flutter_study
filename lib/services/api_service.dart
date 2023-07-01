import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/webtoon_model.dart';

class ApiService {
  
  final String today = "today";
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev"; 


  Future<List<WebtoonModel>> getTodaysToons() async{
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200){
      final List<dynamic> webtoons = jsonDecode
      (response.body);
      for(var webtoon in webtoons) {
        print(webtoon);
      }
      return webtoonInstances;
    }
  throw Error();

  }

}