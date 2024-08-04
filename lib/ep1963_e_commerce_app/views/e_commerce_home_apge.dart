import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
          padding: const EdgeInsets.only(
            left: 24,
            top: 32,
          ),
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
              SizedBox(
                height: 280,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedHome04,),),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline),),
            IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedShoppingCart01),),
            CircleAvatar(),
          ],
        ),
      ),
    );
  }
}
