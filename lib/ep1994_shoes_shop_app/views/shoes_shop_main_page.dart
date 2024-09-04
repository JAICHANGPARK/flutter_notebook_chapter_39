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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What are you booking for ?",
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: Placeholder(),
              ),
              Row(
                children: [
                  Text("New Arrival"),
                  Spacer(),
                  Text("See all"),
                  Icon(Icons.keyboard_arrow_right)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
