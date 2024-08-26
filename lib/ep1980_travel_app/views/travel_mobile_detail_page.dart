import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelMobileDetailPage extends StatefulWidget {
  const TravelMobileDetailPage({super.key});

  @override
  State<TravelMobileDetailPage> createState() => _TravelMobileDetailPageState();
}

class _TravelMobileDetailPageState extends State<TravelMobileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Column(
                children: [
                  Container(
                    height: 420,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Blossom Lodge"),
                            Text("Sunrise Blvd"),
                          ],
                        ),
                      ),
                      Container(
                        height: 82,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.bed),
                      Text("4 bedrooms"),
                      Icon(Icons.bathtub_outlined),
                      Text("3 bathrooms"),
                      Icon(Icons.square_outlined),
                      Text("3,310 sqft")
                    ],
                  ),
                  Divider(
                    height: 42,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Facillites Available",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("See all"))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
