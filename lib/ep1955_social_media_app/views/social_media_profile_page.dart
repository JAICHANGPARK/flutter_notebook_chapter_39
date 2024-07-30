import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SocialMediaProfilePage extends StatefulWidget {
  const SocialMediaProfilePage({super.key});

  @override
  State<SocialMediaProfilePage> createState() => _SocialMediaProfilePageState();
}

class _SocialMediaProfilePageState extends State<SocialMediaProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Container(
                height: 160,
                color: Colors.pink[50],
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: 16,
          right: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 42,
              ),
              Gap(16),
              Text(
                "Dream",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Gap(16),
              SizedBox(
                height: 32,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50]!,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.new_releases_outlined,
                            size: 16,
                          ),
                          Gap(4),
                          Text("Premium"),
                        ],
                      ),
                    ),
                    Gap(8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50]!,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Center(
                        child: Text(
                          "Contributors",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.grey),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Gap(12),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                  Gap(12),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                ],
              ),
              Gap(24),
              Expanded(
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.grey,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.white,
                        tabs: [
                          Tab(
                            text: "Posts",
                          ),
                          Tab(
                            text: "Groups",
                          ),
                          Tab(
                            text: "Connections",
                          ),
                          Tab(
                            text: "Likes",
                          ),
                        ],
                      ),
                      Gap(12),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: 240,
                                        margin: EdgeInsets.only(right: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.brown[50],
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(),
                                            Text("Figma"),
                                            Text(
                                              "The biggest Figma Community in Seoul",
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                    color: Colors.grey,
                                                  )),
                                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.group,
                                                        size: 16,
                                                      ),
                                                      Gap(4),
                                                      Text(
                                                        "8K",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Gap(8),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.circular(24),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Leave",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
