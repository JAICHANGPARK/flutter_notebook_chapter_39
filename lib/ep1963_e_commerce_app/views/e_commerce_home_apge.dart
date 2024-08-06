import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class ECommerceHomeApge extends StatefulWidget {
  const ECommerceHomeApge({super.key});

  @override
  State<ECommerceHomeApge> createState() => _ECommerceHomeApgeState();
}

class _ECommerceHomeApgeState extends State<ECommerceHomeApge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "drop market",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.my_location_outlined,
                    color: Colors.red,
                  ),
                  Gap(4),
                  Text(
                    "Seoul, ROK",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Gap(16),
                ],
              ),
              Gap(16),
              SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 8),
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Text("WOMEN"),
                                  ),
                                ),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )),
              Gap(16),
              SizedBox(
                height: 100,
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "80% OFF",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text("Discover fasion that\nsuits your style"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          height: 42,
                          child: Center(
                            child: Text(
                              "SHOP NOW",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(24),
              Row(
                children: [
                  Text(
                    "Popular items",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  Gap(8),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  ),
                  Gap(16),
                ],
              ),
              Gap(16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        10,
                        (index) {
                          return Container(
                            height: 280,
                            margin: EdgeInsets.only(bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                Gap(12),
                                Text(
                                  "New bags",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Find your best bag in new collection"),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Gap(16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(),
        )),
        child: BottomAppBar(
          height: 80,
          color: Colors.white,
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  HugeIcons.strokeRoundedHome04,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(HugeIcons.strokeRoundedShoppingCart01),
              ),
              CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
