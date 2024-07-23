import 'package:flutter/material.dart';

class SlopeMainPage extends StatefulWidget {
  const SlopeMainPage({super.key});

  @override
  State<SlopeMainPage> createState() => _SlopeMainPageState();
}

class _SlopeMainPageState extends State<SlopeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(229, 240, 248, 1),
              ),
            ),
          ),
          Positioned(
            top: 24,
            left: 24,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Unknown Places",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
