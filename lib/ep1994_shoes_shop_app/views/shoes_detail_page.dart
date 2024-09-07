import 'package:flutter/material.dart';

class ShoesDetailPage extends StatefulWidget {
  const ShoesDetailPage({super.key});

  @override
  State<ShoesDetailPage> createState() => _ShoesDetailPageState();
}

class _ShoesDetailPageState extends State<ShoesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 420,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text("Products Details"),
                          ),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.more_vert,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child:
                        Image.network("https://cdn.pixabay.com/photo/2013/05/31/20/33/running-shoes-115149_1280.jpg"),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                ),
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(""),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(""),
                      ],
                    ),
                    Row(
                      children: [
                        Text("\$224.00"),
                        Text("\$254.00"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Select Size"),
                        TextButton(
                          onPressed: () {},
                          child: Text("Chart"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 42,
                      child: Placeholder(),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_outlined,
            ),
            label: "Home",
          )
        ],
      ),
    );
  }
}
