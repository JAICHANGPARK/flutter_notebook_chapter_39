import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ECommercePopularItemPage extends StatefulWidget {
  const ECommercePopularItemPage({super.key});

  @override
  State<ECommercePopularItemPage> createState() => _ECommercePopularItemPageState();
}

class _ECommercePopularItemPageState extends State<ECommercePopularItemPage> {
  List<String> tabs = [
    "View all",
    "Shirts",
    "Tops",
    "Skirts",
    "Trousers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Popular items",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "124 555 items",
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.file_upload_outlined),
                  ),
                ],
              ),
            ),
            Gap(16),
            Container(
              height: 42,
              margin: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: index == 0 ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: index == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.filter_alt_outlined),
                        Text("Filters"),
                        Spacer(),
                        Icon(Icons.filter_list_sharp),
                        Text("Sort"),
                      ],
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          itemBuilder: (context, index) {}),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
