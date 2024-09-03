import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AiFintechAskPage extends StatefulWidget {
  const AiFintechAskPage({super.key});

  @override
  State<AiFintechAskPage> createState() => _AiFintechAskPageState();
}

class _AiFintechAskPageState extends State<AiFintechAskPage> {
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
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                  Gap(12),
                  Text(
                    "Fintech AI",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                        ),
                        Gap(12),
                        Text("You"),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                          ),
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.edit_outlined),
                        )
                      ],
                    ),
                    Gap(12),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sure, here you go",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                    ),
                  ),
                ],
              ),
              Gap(8),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ]),
                        child: Center(),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 12,
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ]),
                        child: Center(),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 24,
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ]),
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[50]!,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.credit_card,
                                      size: 32,
                                    ),
                                  ),
                                  Gap(12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Visa card",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Gap(8),
                                        Text(
                                          "**** **** **** 784",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Gap(24),
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
                                          "John doe",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Gap(8),
                                        Text(
                                          "Visa 344049201",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text("Total"), Text("\$ 1,400,512.31")],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text("Date & time"),
                                  Text("11.02 AM Friday, 19 October 2024"),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text("Category"),
                                  Spacer(),
                                  CircleAvatar(),
                                  Text("Shopping"),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                              Divider(),
                              Text("Let us know if this category matches")
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.mic),
                          border: InputBorder.none,
                          hintText: "Ask something...",
                        ),
                      ),
                    ),
                  ),
                  Gap(4),
                  Container(
                    decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_upward,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
