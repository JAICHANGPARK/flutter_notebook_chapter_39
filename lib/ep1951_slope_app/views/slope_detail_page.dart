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
                                width: 220,
                                height: 240,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "650 km",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "total tracks",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Gap(16),
                                    Text("3200 m",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),),
                                    Text("maximum height",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),),
                                    Gap(16),
                                    Text("1800 m",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),),
                                    Text("drop",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),),
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
                                padding: EdgeInsets.all(4),
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
          Positioned(
            left: 16,
            top: 260,
            child: Container(
              height: 280,
              width: 200,
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Container(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
