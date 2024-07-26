import 'package:flutter/material.dart';

import 'views/social_media_home_page.dart';

void main() {
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SocialMediaHomePage(),
    );
  }
}
