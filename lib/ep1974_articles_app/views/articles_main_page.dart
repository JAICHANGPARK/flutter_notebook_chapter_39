import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class ArticlesMainPage extends StatefulWidget {
  const ArticlesMainPage({super.key});

  @override
  State<ArticlesMainPage> createState() => _ArticlesMainPageState();
}

class _ArticlesMainPageState extends State<ArticlesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News & Articles",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 320,
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2024/02/23/22/19/forest-8592899_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "10 Tips for Boosting Your Productivity at the Workplace",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(),
                              Text("Dream walker"),
                            ],
                          ),
                          Container(
                            height: 6,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.white.withOpacity(.2),
                                  ),
                                ),
                                Gap(6),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(6),
                                Expanded(
                                  child: Container(
                                    color: Colors.white.withOpacity(.2),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  ...List.generate(10, (index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2021/12/11/07/50/forest-6862143_1280.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Gap(16),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Title Title Title Title Title Title Title",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Gap(12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.2),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        child: Text(
                                          "Background",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "24 min ago",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 6,
                  bottom: 0,
                  child: Container(
                    color: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedHome01,
                            ),
                            Text(
                              "Home",
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedShoppingBag01,
                            ),
                            Text(
                              "Cart",
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 72,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedHome01,
                            ),
                            Text(
                              "Home",
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedHome01,
                            ),
                            Text(
                              "Home",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
