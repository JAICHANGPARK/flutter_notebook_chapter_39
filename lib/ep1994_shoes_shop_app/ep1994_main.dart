import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1994_shoes_shop_app/views/shoes_shop_main_page.dart';
import 'package:signals/signals.dart';
void main() {
  SignalsObserver.instance = LoggingSignalsObserver();
  runApp(ShoesShopApp());
}

class ShoesShopApp extends StatelessWidget {
  const ShoesShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoesShopMainPage(),
    );
  }
}
