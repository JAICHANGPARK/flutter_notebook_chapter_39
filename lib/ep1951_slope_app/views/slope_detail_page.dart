import 'package:flutter/material.dart';

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
                      children: [],
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
