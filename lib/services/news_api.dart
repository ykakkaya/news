import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:news/constants/api_info.dart';
import 'package:news/models/news_model.dart';

class NewsApiServices {
  Future<List<Article>> fetchNews() async {
    final response = await http.get(Uri.parse(ApiInfo.baseUrl));

    if (response.statusCode == 200) {
      List data=jsonDecode(response.body)['articles'];
      return data.map((e) => Article.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
final newsApiServicesProvider =
    Provider<NewsApiServices>((ref) => NewsApiServices());