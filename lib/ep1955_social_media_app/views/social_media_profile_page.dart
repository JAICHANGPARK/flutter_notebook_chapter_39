import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        Positioned.fill(
          child: Column(
            children: [
              Container(
                height: 160,
                color: Colors.pink[50],
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: 16,
          right: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 42,
              ),
              Gap(16),
              Text(
                "Dream",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Gap(16),
              SizedBox(
                height: 32,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50]!,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Row(
                        children: [
                          Icon(Icons.new_releases_outlined),
                          Gap(4),
                          Text("Premium"),
                        ],
                      ),
                    ),
                    Gap(8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50]!,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: Center(
                        child: Text("Contributors"),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(16),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text("Edit"),
                  ),
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.email,color: Colors.grey,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.email,color: Colors.grey,),
                  ),
                ],
              ),

            ],
          ),
        )
      ],
    );
  }
}
