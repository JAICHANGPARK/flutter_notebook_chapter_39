import 'package:flutter/material.dart';

import 'views/e_commerce_home_apge.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECommerceHomeApge(),
    );
  }
}
