import 'package:flutter/material.dart';

import 'views/travel_mobile_login_page.dart';


void main() {
  runApp(TravelMobileApp());
}


class TravelMobileApp extends StatelessWidget {
  const TravelMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelMobileLoginPage(),
    );
  }
}
