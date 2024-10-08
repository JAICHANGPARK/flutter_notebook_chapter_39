import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:signals/signals_flutter.dart';

class ShoesItem {
  String? title;
  int? count;

  ShoesItem(this.title, this.count);
}

class ShoesCartPage extends StatefulWidget {
  const ShoesCartPage({super.key});

  @override
  State<ShoesCartPage> createState() => _ShoesCartPageState();
}

class _ShoesCartPageState extends State<ShoesCartPage> with SignalsMixin {
  late final Signal<List<ShoesItem>> singleItem = this.createSignal(
    [ShoesItem("Shoes Casual Sport", 1),
      ShoesItem("Shoes Casual Sport", 1),
      ShoesItem("Shoes Casual Sport", 1),
      ShoesItem("Shoes Casual Sport", 1),
      ShoesItem("Shoes Casual Sport", 1),
      ShoesItem("Shoes Casual Sport", 1),

    ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.arrow_back_ios_new),
                    backgroundColor: Colors.grey[200]!,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "My Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[200]!,
                    child: Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              ),
              Gap(24),
              Expanded(
                child: ListView.separated(
                  itemCount: singleItem.value.length,
                  itemBuilder: (context, index) {
                    final item = singleItem.value[index];
                    return Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.orange[100]!,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Gap(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${item.title}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        singleItem.value.removeAt(index);
                                      },
                                      child: Icon(
                                        Icons.delete_outline,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                ),
                                Gap(8),
                                const Text("Woman's Shoes"),
                                Gap(12),
                                Row(
                                  children: [
                                    Text(
                                      "\$224.00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[200]!,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: const Icon(Icons.remove),
                                    ),
                                    Gap(4),
                                     Text("${item.count}",),
                                    Gap(4),
                                    GestureDetector(
                                      onTap: (){
                                        if(singleItem.value[index].count != null){
                                          singleItem.value[index].count = (singleItem.value[index].count ?? 0) + 1;
                                        }

                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.deepOrange,
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: const Icon(Icons.add),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.orange[100]!,
                  ),

                ),
              ),
              Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\$600.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\$600.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\$600.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Gap(24),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[600]!,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Check out for \$580.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Gap(16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (idx) {},
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedHome01,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Cart",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
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
