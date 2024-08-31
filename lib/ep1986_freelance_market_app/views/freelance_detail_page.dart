import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FreelanceDetailPage extends StatefulWidget {
  const FreelanceDetailPage({super.key});

  @override
  State<FreelanceDetailPage> createState() => _FreelanceDetailPageState();
}

class _FreelanceDetailPageState extends State<FreelanceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 244, 240, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    Container(
                      height: 260,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_ios_new,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.star_border,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 24,
                            left: 16,
                            right: 16,
                            bottom: 0,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 64,
                                ),
                                Gap(16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                    ),
                                    Gap(6),
                                    Text(
                                      "Sandra Walker",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    )
                                  ],
                                ),
                                Gap(6),
                                Text("Copywriter")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 42,
                      child: Row(
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.grey[200]!,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_outline,
                                  size: 16,
                                ),
                                Gap(2),
                                Text("4.3"),
                              ],
                            ),
                          ),
                          Gap(8),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.grey[200]!,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  size: 16,
                                ),
                                Gap(4),
                                Text("part-time"),
                              ],
                            ),
                          ),
                          Gap(8),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.grey[200]!,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.inventory_2_outlined,
                                  size: 16,
                                ),
                                Gap(4),
                                Text("4+years"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(16),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: 3,
                    ),
                    Gap(16),
                    Row(
                      children: [
                        Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(8),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                        ),
                      ],
                    ),
                    Gap(16),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Center(
                                child: Text(
                                  "Terms",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Center(
                              child: Text(
                                "Reviews",
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Gap(16),
                    Expanded(child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                            child: Row(
                              children: [
                                Icon(Icons.chat_outlined),
                                Gap(12),
                                Text("The freelancer request\nxxxxx xxxxx xxxxx xxxx.")
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                  ],
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 32,
                child: Container(
                  height: 62,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.lightGreenAccent,
                        ),
                        child: Center(
                          child: Text(
                            "Hire",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                      Gap(8),
                      Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
