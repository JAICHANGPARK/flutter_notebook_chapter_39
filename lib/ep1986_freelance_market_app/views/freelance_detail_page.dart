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
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(8),
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
            ),
            Container(
              height: 42,
              child: Row(
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.grey[200]!,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        Icon(Icons.star_outline),
                        Gap(2),
                        Text("4.3"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.grey[200]!,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        Icon(Icons.star_outline),
                        Gap(2),
                        Text("4.3"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Gap(16),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              maxLines: 3,
            ),
            Gap(16),
            Row(
              children: [
                Text("Read more"),
                Icon(Icons.arrow_forward),
              ],
            ),
            Gap(16),
            Container(
              height: 72,
              color: Colors.white,
            ),
            Gap(16),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
