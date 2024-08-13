import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class LanguageLearningHomePage extends StatefulWidget {
  const LanguageLearningHomePage({super.key});

  @override
  State<LanguageLearningHomePage> createState() => _LanguageLearningHomePageState();
}

class _LanguageLearningHomePageState extends State<LanguageLearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            16,
            16,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                        ),
                        Gap(8),
                        Text("12"),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      HugeIcons.strokeRoundedNotification03,
                    ),
                  ),
                ],
              ),
              Gap(16),
              Text(
                "English for business",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Gap(16),
              Container(
                height: 160,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        Gap(12),
                        Text("Today's Goal"),
                        Spacer(),
                        Icon(
                          HugeIcons.strokeRoundedEdit01,
                        ),
                      ],
                    ),
                    Text(
                      "6/8 Tasks",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Container(
                      height: 28,
                      child: Row(
                        children: List.generate(25, (index) {
                          return Container(
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: index < 20 ? Colors.green[400]! : Colors.green[100]!,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
              Gap(16),
              Text(
                "Course Progress",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Gap(16),
              Container(
                height: 160,
                child: Placeholder(),
              ),
              Gap(16),
              Container(
                height: 42,
                child: Placeholder(),
              ),
              Gap(16),
              Expanded(child: Placeholder())
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedHome13,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedBook02,
            ),
            label: "Course",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedMessage02,
            ),
            label: "Chatbot",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedUser,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
