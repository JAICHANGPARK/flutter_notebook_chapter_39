import 'package:flutter/material.dart';

import 'views/social_media_home_page.dart';

void main() {
  runApp(const SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialMediaHomePage(),
    );
  }
}
