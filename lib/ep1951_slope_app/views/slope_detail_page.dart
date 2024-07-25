import 'package:flutter/material.dart';

class SlopeDetailPage extends StatefulWidget {
  const SlopeDetailPage({super.key});

  @override
  State<SlopeDetailPage> createState() => _SlopeDetailPageState();
}

class _SlopeDetailPageState extends State<SlopeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: 
                    )
                  ),
                  child: Row(
                    children: [

                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
