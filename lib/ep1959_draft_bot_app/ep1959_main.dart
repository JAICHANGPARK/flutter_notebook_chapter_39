import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1959_draft_bot_app/views/draft_bot_home_page.dart';

void main() {
  runApp(DraftBotApp());
}

class DraftBotApp extends StatelessWidget {
  const DraftBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraftBotHomePage(),
    );
  }
}
