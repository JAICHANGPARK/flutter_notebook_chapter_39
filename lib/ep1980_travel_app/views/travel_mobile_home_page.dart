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
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore your needs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
