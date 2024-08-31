import 'package:flutter/material.dart';

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
                CircleAvatar(),
                CircleAvatar(),
                Column(
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
                  decoration: BoxDecoration(),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
