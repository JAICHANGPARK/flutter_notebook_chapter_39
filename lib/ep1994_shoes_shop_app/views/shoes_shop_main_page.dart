import 'package:flutter/material.dart';

class ShoesShopMainPage extends StatefulWidget {
  const ShoesShopMainPage({super.key});

  @override
  State<ShoesShopMainPage> createState() => _ShoesShopMainPageState();
}

class _ShoesShopMainPageState extends State<ShoesShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[100],
          child: Icon(Icons.menu),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: Icon(Icons.notifications_active_outlined),
          ),
        ],
        title: Text("Logo"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
