import 'package:flutter/material.dart';

class ECommerceHomeApge extends StatefulWidget {
  const ECommerceHomeApge({super.key});

  @override
  State<ECommerceHomeApge> createState() => _ECommerceHomeApgeState();
}

class _ECommerceHomeApgeState extends State<ECommerceHomeApge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("drop market"),
                Spacer(),
                Icon(
                  Icons.my_location_outlined,
                ),
                Text(
                  "Seoul, ROK",
                )
              ],
            ),
            SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}
