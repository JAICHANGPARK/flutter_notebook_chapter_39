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
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/09/20/19/52/landscape-5588115_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 16,
                            right: 16,
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: Text("4.4"),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Blossom Lodge",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Gap(8),
                              Text("Sunrise Blvd"),
                            ],
                          ),
                        ),
                        Container(
                          height: 82,
                          width: 140,
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const Gap(16),
                    const Row(
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
                    const Divider(
                      height: 42,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Facillites Available",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See all",
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
