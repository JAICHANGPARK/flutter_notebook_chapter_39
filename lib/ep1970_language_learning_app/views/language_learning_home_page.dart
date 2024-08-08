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
              Text("English for business"),
              Gap(16),
              Container(
                height: 160,
                child: Placeholder(),
              ),
              Gap(16),
              Text("Course Progress"),
              Gap(16),
              Container(
                height: 160,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
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
