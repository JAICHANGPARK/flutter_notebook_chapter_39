import 'package:flutter/material.dart';

class SocialMediaHomePage extends StatefulWidget {
  const SocialMediaHomePage({super.key});

  @override
  State<SocialMediaHomePage> createState() => _SocialMediaHomePageState();
}

class _SocialMediaHomePageState extends State<SocialMediaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_add_alt),
          ),
          Badge(
            child:  Icon(Icons.notifications,),
            // child: IconButton(
            //   onPressed: (){},
            //   icon: Icon(Icons.notifications,),
            // ),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
