import 'package:flutter/material.dart';
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
          style: TextStyle(
            color: Colors.white,
          ),
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
            child: Placeholder(),
          ),
          Container(
            height: 80,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                    left: 16,
                    right: 16,
                    top: 0,
                    bottom: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
