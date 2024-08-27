import 'package:flutter/material.dart';

import 'views/freelance_main_page.dart';

void main() {
  runApp(FreelanceMarketApp());
}

class FreelanceMarketApp extends StatelessWidget {
  const FreelanceMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FreelanceMainPage(),
    );
  }
}
