import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SlopeDetailPage extends StatefulWidget {
  const SlopeDetailPage({super.key});

  @override
  State<SlopeDetailPage> createState() => _SlopeDetailPageState();
}

class _SlopeDetailPageState extends State<SlopeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/09/29/17/01/ski-run-466225_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 42),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                              ),
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Les Mountain, Unknown Places",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                              ),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Gap(24),
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                height: 240,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("650 km"),
                                    Text("total tracks"),
                                    Text("3200 m"),
                                    Text("maximum height"),
                                    Text("1800 m"),
                                    Text("drop"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Gap(24),
                        Expanded(
                          child: Row(
                            children: [
                              Gap(24),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.bookmark_added_outlined),
                                  onPressed: () {},
                                  color: Colors.white,
                                ),
                              ),
                              Gap(64),
                              Expanded(
                                child: Text(
                                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                """,
                                  maxLines: 10,
                                ),
                              ),
                              Gap(24),
                            ],
                          ),
                        ),
                        Gap(24),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                          ),
                          height: 64,
                          child: Center(
                            child: Text(
                              "Learn more",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
