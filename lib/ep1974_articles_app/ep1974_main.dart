import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1974_articles_app/views/articles_main_page.dart';

void main() {
  runApp(ArticlesApp());
}

class ArticlesApp extends StatelessWidget {
  const ArticlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: ArticlesMainPage(),
    );
  }
}
