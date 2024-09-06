import 'package:flutter/material.dart';

class ShoesDetailPage extends StatefulWidget {
  const ShoesDetailPage({super.key});

  @override
  State<ShoesDetailPage> createState() => _ShoesDetailPageState();
}

class _ShoesDetailPageState extends State<ShoesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Products Details"),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
