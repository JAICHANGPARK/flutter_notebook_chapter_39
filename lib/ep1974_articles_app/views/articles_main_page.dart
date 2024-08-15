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
                      SizedBox(width: 72,),
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
                      ,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
