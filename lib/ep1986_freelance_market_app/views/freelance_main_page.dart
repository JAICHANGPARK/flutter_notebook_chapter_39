import 'package:flutter/material.dart';

class FreelanceMainPage extends StatefulWidget {
  const FreelanceMainPage({super.key});

  @override
  State<FreelanceMainPage> createState() => _FreelanceMainPageState();
}

class _FreelanceMainPageState extends State<FreelanceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 244, 240, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
                child: Column(
              children: [
                SizedBox(
                  height: 52,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("People"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
