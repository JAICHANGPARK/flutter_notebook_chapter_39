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
          return Placeholder();
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
