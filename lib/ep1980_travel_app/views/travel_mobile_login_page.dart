import 'package:flutter/material.dart';

class TravelMobileLoginPage extends StatefulWidget {
  const TravelMobileLoginPage({super.key});

  @override
  State<TravelMobileLoginPage> createState() => _TravelMobileLoginPageState();
}

class _TravelMobileLoginPageState extends State<TravelMobileLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2014/07/10/17/17/hotel-389256_1280.jpg",
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Tripter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Column(children: [
                      Text("Special Spaces for Every Getaway"),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, ")
                    ],))
                  ],
                ),
              ),
              Container(
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
