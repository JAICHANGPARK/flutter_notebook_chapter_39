import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1980_travel_app/views/travel_mobile_list_page.dart';
import 'package:gap/gap.dart';

import 'travel_mobile_detail_page.dart';

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
            top: 16,
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
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.025),
                                  spreadRadius: 8,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              children: [
                                const Gap(8),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.search),
                                        border: InputBorder.none,
                                        hintText: "What do you looking for?"),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  foregroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.tune,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(12),
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Badge(
                            label: Text("2"),
                            child: Icon(Icons.mail_outline),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Explore your needs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See all",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 140,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[100]!,
                                  blurRadius: 8,
                                  spreadRadius: 8,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                                Spacer(),
                                Text(
                                  "Beach",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "View",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
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
                        const Text(
                          "Discover what near you",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const TravelMobileListPage();
                                },
                              ),
                            );
                          },
                          child: const Text(
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
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => TravelMobileDetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 280,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/11/20/15/34/mirror-house-4640385_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 16,
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.centerRight,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      child: Text("4.3"),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Wood Manor",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text("Grove Lane"),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: const StadiumBorder(),
                                            color: Colors.grey[200],
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                          child: const Text.rich(TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "\$340",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "/night",
                                              )
                                            ],
                                          )),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
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
            child: Center(
              child: Container(
                height: 54,
                width: 280,
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_today,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_3_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
