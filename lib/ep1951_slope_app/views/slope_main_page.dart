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
            top: 62,
            left: 24,
            right: 24,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Unknown Places",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.white.withOpacity(.6),
                          Colors.white.withOpacity(.2),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ),
                            Text("Zone Ludique")
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Your best result in 5 min 32 sec",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
