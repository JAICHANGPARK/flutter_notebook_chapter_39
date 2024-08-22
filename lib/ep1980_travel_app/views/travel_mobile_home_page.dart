import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          Positioned.fill(top: 16,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              children: [
                                Expanded(child: TextField()),
                                CircleAvatar(),
                              ],
                            ),
                          ),
                        ),
                        Gap(12),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
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
                            fontSize: 18,
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
                  ),
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discover what near you",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 240,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                            margin: EdgeInsets.only(bottom: 16),
                          );
                        },
                      ),
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
