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
              Gap(16),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: Text("Thu, 27 Jun"),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 64,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                ),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                ),
                              ),
                              Text("11:35 am")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                  maxLines: 3,
                                ),
                              ),
                              Gap(12),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                ),
                              ),
                                  Text("11:35 am")
                            ],
                          ),
                        ),
                        SizedBox(width: 64),
                      ],
                    )
                  ],
                ),
              ),
              Gap(16),
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
