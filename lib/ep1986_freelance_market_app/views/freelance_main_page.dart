import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class FreelanceMainPage extends StatefulWidget {
  const FreelanceMainPage({super.key});

  @override
  State<FreelanceMainPage> createState() => _FreelanceMainPageState();
}

class _FreelanceMainPageState extends State<FreelanceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 244, 240, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              left: 16,
              right: 16,
              child: Column(
                children: [
                  SizedBox(
                    height: 82,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              HugeIcons.strokeRoundedNotification01,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "People",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              HugeIcons.strokeRoundedMenu01,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  HugeIcons.strokeRoundedSearch01,
                                ),
                                border: InputBorder.none,
                                hintText: "Search..."),
                          ),
                        ),
                      ),
                      Gap(12),
                      Container(
                        width: 58,
                        height: 58,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 4,
                              right: 4,
                              top: 4,
                              bottom: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  HugeIcons.strokeRoundedFilter,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(245, 244, 240, 1),
                                ),
                                padding: EdgeInsets.all(3),
                                child: CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Gap(12),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          elevation: 3,
                          child: Container(
                            height: 240,
                            padding: EdgeInsets.all(14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                    ),
                                    Gap(12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sandra Walker",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "Copywriter",
                                          ),
                                        ],
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Online",
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                  maxLines: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "\$12",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),),
                                            TextSpan(
                                              text: " /hour",
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.lightGreenAccent,
                                      child: Icon(Icons.star_border),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
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
