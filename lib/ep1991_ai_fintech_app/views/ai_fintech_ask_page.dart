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
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(

                        ),
                        G
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
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sure, here you go"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Placeholder(),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(),
                    ),
                  ),
                  Container(
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
