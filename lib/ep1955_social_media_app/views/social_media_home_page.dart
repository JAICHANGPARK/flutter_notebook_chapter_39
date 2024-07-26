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
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.featured_play_list_rounded,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.explore_outlined,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
