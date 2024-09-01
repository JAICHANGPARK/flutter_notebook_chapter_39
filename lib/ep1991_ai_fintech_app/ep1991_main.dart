import 'package:flutter/material.dart';

import 'views/ai_fintech_ask_page.dart';

void main() {
  runApp(AiFintechApp());
}

class AiFintechApp extends StatelessWidget {
  const AiFintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AiFintechAskPage(),
    );
  }
}
