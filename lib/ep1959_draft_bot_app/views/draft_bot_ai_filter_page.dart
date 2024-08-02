import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DraftBotAiFilterPage extends StatefulWidget {
  const DraftBotAiFilterPage({super.key});

  @override
  State<DraftBotAiFilterPage> createState() => _DraftBotAiFilterPageState();
}

class _DraftBotAiFilterPageState extends State<DraftBotAiFilterPage> {
  List<String> tones = [
    "Funny",
    "Sad",
    "Happy",
    "Awesome",
    "Engaging",
  ];

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
            Gap(8),
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
                ],
                onChanged: (String? value) {},
              ),
            ),
            Gap(32),
            Text(
              "Tone",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(8),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: tones.map((e) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    e.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                );
              }).toList(),
            ),
            Gap(24),
            Text(
              "Writing Style",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(12),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: ["Formal", "Confident", "Informal"].map((e) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    e.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                );
              }).toList(),
            ),
            Gap(24),
            Text(
              "Length",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(12),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: ["Short", "Mid", "Long"].map((e) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    e.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                );
              }).toList(),
            ),
            Gap(24),
            SwitchListTile.adaptive(
              value: true,
              onChanged: (v) {},
              title: Text("Emoji"),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(114, 102, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Center(
                child: Text(
                  "Save Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
