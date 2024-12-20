import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/models/news_model.dart';
import 'package:news/services/news_api.dart';

final newsControllerProvider = FutureProvider<List<Article>>((ref) async {
  return ref.watch(newsApiServicesProvider).fetchNews();
});
