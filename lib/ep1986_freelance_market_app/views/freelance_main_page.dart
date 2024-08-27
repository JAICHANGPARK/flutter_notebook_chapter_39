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
                          ),
                          child: TextField(),
                        ),
                      ),
                      Container(
                        width: 64,
                        height: 64,
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
