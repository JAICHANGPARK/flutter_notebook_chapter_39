import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: SafeArea(
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
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Special Spaces for Every Getaway"),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, ")
                          ],
                        ))
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Continue with Apple",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Gap(8),
                        Container( padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Text(
                              "Continue with Google",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Gap(8),
                        Container( padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Text(
                              "Sign up with email",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Gap(8),
                        Container( padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
                          ),
                          child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Gap(8),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
