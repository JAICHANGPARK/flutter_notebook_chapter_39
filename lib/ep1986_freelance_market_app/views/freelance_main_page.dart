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
                            ),
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
                            height: 260,
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
