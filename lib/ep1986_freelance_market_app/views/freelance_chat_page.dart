import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FreelanceChatPage extends StatefulWidget {
  const FreelanceChatPage({super.key});

  @override
  State<FreelanceChatPage> createState() => _FreelanceChatPageState();
}

class _FreelanceChatPageState extends State<FreelanceChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                    ),
                  ),
                  Gap(12),
                  CircleAvatar(
                    radius: 24,
                  ),
                  Gap(8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sandra Walker"),
                      Container(
                        child: Text(
                          "Online",
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                    ),
                  )
                ],
              ),
              Expanded(child: Placeholder()),
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
                  Gap(8),
                  CircleAvatar(
                    backgroundColor: Colors.lightGreenAccent,
                    child: Icon(Icons.send_outlined),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
