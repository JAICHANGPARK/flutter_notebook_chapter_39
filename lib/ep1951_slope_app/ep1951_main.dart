import 'package:flutter/material.dart';

import 'views/slope_main_page.dart';

void main() {
  runApp(SlopeMobileApp());
}

class SlopeMobileApp extends StatelessWidget {
  const SlopeMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SlopeMainPage(),
    );
  }
}
