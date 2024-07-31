import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
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
