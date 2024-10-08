import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_39/ep1959_draft_bot_app/views/draft_bot_ai_filter_page.dart';
import 'package:gap/gap.dart';

import 'my_emails_page.dart';

class DraftBotHomePage extends StatefulWidget {
  const DraftBotHomePage({super.key});

  @override
  State<DraftBotHomePage> createState() => _DraftBotHomePageState();
}

class _DraftBotHomePageState extends State<DraftBotHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 102, 255, 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              ),
                              Gap(4),
                              Text(
                                "Write",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Gap(6),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.reply),
                            Gap(4),
                            Text(
                              "Reply",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20),
              Text(
                "Your Goal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(6),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Ex: Hi, Dream! Let's have a call today and discuss our new project in details"),
                      ),
                    ),
                    Gap(8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[100]!,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Gap(4),
                            Text(
                              "Add Prompt",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20),
              Text(
                "Output Language",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonFormField<String>(
                  dropdownColor: Colors.white,
                  value: "Korean",
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Korean",
                      ),
                      value: "Korean",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "English",
                      ),
                      value: "English",
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Japanese",
                      ),
                      value: "Japanese",
                    )
                  ],
                  onChanged: (String? value) {},
                ),
              ),
              Gap(12),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return DraftBotAiFilterPage();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      Gap(8),
                      Text("AI Filter"),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16),
              Row(
                children: [
                  Text(
                    "Mass Generate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Color.fromRGBO(114, 102, 255, 1),
                  ),
                  Spacer(),
                  Icon(
                    Icons.bookmark_border,
                  ),
                  Text(
                    "Save Prompt",
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text("Add Prospect"),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                          ),
                          Text("Add Info")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Gap(32),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color.fromRGBO(114, 102, 255, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Gap(8),
                    Text(
                      "Generate Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor:  Color.fromRGBO(114, 102, 255, 1),
          unselectedItemColor: Colors.grey,
          onTap: (idx) {
            if (idx == 2) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyEmailsPage();
              }));
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_outlined,
              ),
              label: "Write",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              label: "Prompts",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.inbox,
              ),
              label: "My Emails",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
