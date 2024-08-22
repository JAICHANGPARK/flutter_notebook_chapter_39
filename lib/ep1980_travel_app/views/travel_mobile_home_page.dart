import 'package:flutter/material.dart';

class TravelMobileHomePage extends StatefulWidget {
  const TravelMobileHomePage({Key? key}) : super(key: key);

  @override
  State<TravelMobileHomePage> createState() => _TravelMobileHomePageState();
}

class _TravelMobileHomePageState extends State<TravelMobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(),
          ),
          Positioned(
            bottom: 32,
            left: 32,
            right: 32,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
              ),
              child: Row(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
