import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1974_articles_app/api/article_api.dart';
import 'package:flutter_notebook_chapter_39/ep1974_articles_app/model/articles.dart';
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
        title: const Text(
          "News & Articles",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: buildTabTypeWidget(),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedHome01,
                              color: Color.fromRGBO(10, 119, 255, 1),
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                color: Color.fromRGBO(10, 119, 255, 1),
                              ),
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
                const Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Color.fromRGBO(10, 119, 255, 1),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.hive_outlined,
                        size: 32,
                      ),
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

  buildTabTypeWidget() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: "All"),
              Tab(
                text: "Open (24)",
              ),
              Tab(
                text: "Upcoming (8)",
              ),
              Tab(
                text: "Closed (9)",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                FutureBuilder(
                  future: getPhotos(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          "${snapshot.error}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                    if (snapshot.hasData) {}
                    return Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildListTypeWidget() {
    return FutureBuilder<List<Articles>>(
        future: getArticles(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 320,
                      margin: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2024/02/23/22/19/forest-8592899_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data?[0].title ?? ">???",
                            // Text  "10 Tips for Boosting Your Productivity at the Workplace",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const Gap(12),
                          const Row(
                            children: [
                              CircleAvatar(),
                              Gap(12),
                              Text(
                                "Dream walker",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Gap(12),
                          Container(
                            height: 4,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.white.withOpacity(.2),
                                  ),
                                ),
                                const Gap(6),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                  ),
                                ),
                                const Gap(6),
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
                  ...?snapshot.data?.sublist(0).map((e) {
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
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2021/12/11/07/50/forest-6862143_1280.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(16),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.title ?? "Title Title Title Title Title Title Title",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Gap(12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.2),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        child: const Text(
                                          "Background",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Text(
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
                        const Divider(),
                      ],
                    );
                  }).toList(),
                ],
              ),
            );
          }
          if (snapshot.hasError) {
            return Text(
              snapshot.error.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        });
  }
}
