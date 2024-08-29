import 'package:flutter/material.dart';

class FreelanceDetailPage extends StatefulWidget {
  const FreelanceDetailPage({super.key});

  @override
  State<FreelanceDetailPage> createState() => _FreelanceDetailPageState();
}

class _FreelanceDetailPageState extends State<FreelanceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 260,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.star_border,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
