import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelMobileListPage extends StatefulWidget {
  const TravelMobileListPage({super.key});

  @override
  State<TravelMobileListPage> createState() => _TravelMobileListPageState();
}

class _TravelMobileListPageState extends State<TravelMobileListPage> {
  List<String> tabs = [
    "Near me",
    "Cabins",
    "Rooms",
    "Beachfront",
    "Garden",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                            ),
                          ),
                        ),
                        const Gap(12),
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 16,
                      bottom: 16,
                      top: 16,
                    ),
                    height: 42,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: index == 0 ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          margin: EdgeInsets.only(right: 4),
                          child: Row(
                            children: [
                              if (index == 0) const Icon(Icons.pin_drop),
                              Text(
                                tabs[index],
                                style: TextStyle(
                                  color: index == 0 ? Colors.white : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24)
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.map_outlined),
                    Gap(8),
                    Text("Maps"),
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
