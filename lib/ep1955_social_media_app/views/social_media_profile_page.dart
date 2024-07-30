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
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Row(
                        children: [
                          Icon(Icons.new_releases_outlined),
                          Gap(4),
                          Text("Premium"),
                        ],
                      ),
                    ),
                    Gap(8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50]!,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
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
                    ),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.email,
                      color: Colors.grey,
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
                      Expanded(
                        child: TabBarView(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Placeholder(),
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
