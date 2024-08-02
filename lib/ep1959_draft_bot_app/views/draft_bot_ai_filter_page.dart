import 'package:flutter/material.dart';

class DraftBotAiFilterPage extends StatefulWidget {
  const DraftBotAiFilterPage({super.key});

  @override
  State<DraftBotAiFilterPage> createState() => _DraftBotAiFilterPageState();
}

class _DraftBotAiFilterPageState extends State<DraftBotAiFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text("AI Filters"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Type of Email"),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
          )
        ],
      ),
    );
  }
}
