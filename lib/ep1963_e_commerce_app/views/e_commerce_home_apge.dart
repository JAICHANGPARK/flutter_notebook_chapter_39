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
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                child: Placeholder(),
              ),
              SizedBox(
                height: 100,
                child: Placeholder(),
              ),
              Row(
                children: [
                  Text(
                    "Popular items",
                  ),
                  Text(
                    "View all",
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
              SizedBox(height: 280,
              child: Placeholder(),)
            ],
          ),
        ),
      ),
    );
  }
}
