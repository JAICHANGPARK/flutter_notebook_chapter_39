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
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (idx) {

        },
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
