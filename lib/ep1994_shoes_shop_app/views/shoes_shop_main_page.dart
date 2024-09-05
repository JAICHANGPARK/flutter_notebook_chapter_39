import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'shoes_item_widget.dart';

class ShoesShopMainPage extends StatefulWidget {
  const ShoesShopMainPage({super.key});

  @override
  State<ShoesShopMainPage> createState() => _ShoesShopMainPageState();
}

class _ShoesShopMainPageState extends State<ShoesShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[100],
          child: Icon(Icons.menu),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: Icon(Icons.notifications_active_outlined),
          ),
        ],
        title: Text("Logo"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What are you booking for ?",
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              Gap(16),
              Container(
                height: 120,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Gap(16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "New Arrival",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.deepOrange,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.deepOrange,
                          ),
                        ],
                      ),
                      Gap(16),
                      Container(
                        height: 240,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[200]!,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 4,
                                            top: 4,
                                            child: CircleAvatar(
                                              child: Icon(
                                                Icons.favorite_outline,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Gap(12),
                                  Text(
                                    "PREMIUM SHOES",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$174.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            )),
                            Gap(12),
                            Expanded(
                                child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[200]!,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 4,
                                            top: 4,
                                            child: CircleAvatar(
                                              child: Icon(
                                                Icons.favorite_outline,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Gap(12),
                                  Text(
                                    "PREMIUM SHOES",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$174.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                      Gap(24),
                      Row(
                        children: [
                          Text(
                            "Best Seller",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.deepOrange,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.deepOrange,
                          ),
                        ],
                      ),
                      Gap(24),
                      SizedBox(
                        height: 42,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Text("All"),
                            );
                          },
                        ),
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: List.generate(
                          10,
                          (index) => ShoesItemWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
