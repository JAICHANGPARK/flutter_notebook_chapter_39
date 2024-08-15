import 'package:flutter/material.dart';

class ArticlesMainPage extends StatefulWidget {
  const ArticlesMainPage({super.key});

  @override
  State<ArticlesMainPage> createState() => _ArticlesMainPageState();
}

class _ArticlesMainPageState extends State<ArticlesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("News & Articles"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
            ),
          )
        ],
      ),
      body: Column(),
    );
  }
}
