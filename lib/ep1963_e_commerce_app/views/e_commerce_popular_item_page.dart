import 'package:flutter/material.dart';

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
            Container(
              height: 42,
              child: ListView.builder(
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: index == 0 ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      tabs[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
