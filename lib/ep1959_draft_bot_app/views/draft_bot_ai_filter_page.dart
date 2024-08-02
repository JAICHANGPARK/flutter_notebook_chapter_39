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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Type of Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                    value: "0",
                    child: Text(
                      "Sales Mail",
                    ),
                  )
                ], onChanged: (String? value) {  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
