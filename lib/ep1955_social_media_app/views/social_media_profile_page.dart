import 'package:flutter/material.dart';


class SocialMediaProfilePage extends StatefulWidget {
  const SocialMediaProfilePage({super.key});

  @override
  State<SocialMediaProfilePage> createState() => _SocialMediaProfilePageState();
}

class _SocialMediaProfilePageState extends State<SocialMediaProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(child: Column(
          children: [
            Container(
                height: 200,
                color: Colors.pink[50], ,
            )
          ],
        ))

      ],
    );
  }
}
