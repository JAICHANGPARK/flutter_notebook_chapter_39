import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.lightGreenAccent,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.star_border,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 24,
                    left: 16,
                    right: 16,
                    bottom: 0,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 64,
                        ),
                        Gap(16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            Gap(6),
                            Text(
                              "Sandra Walker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                        Gap(6),
                        Text("Copywriter")
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
