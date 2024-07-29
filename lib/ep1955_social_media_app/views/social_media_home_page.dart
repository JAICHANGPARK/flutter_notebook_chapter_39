import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SocialMediaHomePage extends StatefulWidget {
  const SocialMediaHomePage({super.key});

  @override
  State<SocialMediaHomePage> createState() => _SocialMediaHomePageState();
}

class _SocialMediaHomePageState extends State<SocialMediaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_add_alt),
          ),
          Badge(
            child: Icon(
              Icons.notifications,
            ),
            // child: IconButton(
            //   onPressed: (){},
            //   icon: Icon(Icons.notifications,),
            // ),
          ),
          Gap(12),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.white.withOpacity(.05),
                  Colors.white.withOpacity(.1),
                ],
                stops: [0.8, 0.2, .1],
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22,
                ),
                Gap(16),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dream"),
                          Text("2h"),
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        height: 240,
                        color: Colors.orange,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Gap(6),
                          Text(
                            "40.9K",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Gap(12),
                          Icon(
                            Icons.chat_outlined,
                            color: Colors.grey,
                          ),
                          Gap(6),
                          Text(
                            "1.3K",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.bookmark,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.featured_play_list_rounded,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.explore_outlined,
              ),
              color: Colors.grey,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.circular(24),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                color: Colors.white.withOpacity(.5),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
