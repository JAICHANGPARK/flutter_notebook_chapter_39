import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_notebook_chapter_39/ep1974_articles_app/model/articles.dart';
import 'package:flutter_notebook_chapter_39/ep1974_articles_app/model/photos.dart';

Future<List<Articles>> getArticles() async {
  final dio = Dio();
  final posts = await dio.get(
    "https://jsonplaceholder.typicode.com/posts",
  );
  if (posts.statusCode == 200) {
    final data2 = posts.data as List<dynamic>;

    List<Articles> results = data2.map((e){
      return $ArticlesFromJson(e);
    }).toList();

    return results;
  }
  return [];
}

Future getPhotos() async{
  final dio = Dio();
  final posts = await dio.get(
    "https://jsonplaceholder.typicode.com/photos",
  );
  print(posts.statusCode);
  if (posts.statusCode == 200) {
    final data2 = posts.data as List<dynamic>;

    List<Photos> results = data2.map((e){
      return $PhotosFromJson(e);
    }).toList();

    return results;
  }
  return [];
}
