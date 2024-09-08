import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ShoesCartPage extends StatefulWidget {
  const ShoesCartPage({super.key});

  @override
  State<ShoesCartPage> createState() => _ShoesCartPageState();
}

class _ShoesCartPageState extends State<ShoesCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "My Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(
                          color: Colors.orange[100]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (idx) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedHome01,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_outlined,
            ),
            label: "Home",
          )
        ],
      ),
    );
  }
}
