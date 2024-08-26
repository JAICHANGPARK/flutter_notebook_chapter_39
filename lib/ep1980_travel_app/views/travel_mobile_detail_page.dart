import 'package:flutter/material.dart';

class TravelMobileDetailPage extends StatefulWidget {
  const TravelMobileDetailPage({super.key});

  @override
  State<TravelMobileDetailPage> createState() => _TravelMobileDetailPageState();
}

class _TravelMobileDetailPageState extends State<TravelMobileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
                left: 16,
                right: 16,
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      decoration: BoxDecoration(
                        color: Colors.grey,
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
