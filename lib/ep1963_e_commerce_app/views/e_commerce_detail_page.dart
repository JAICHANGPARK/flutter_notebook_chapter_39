import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_upload_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            child: Placeholder(),
          ),
          Text(
            "DREAM",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text("Tie dye print satin effect shirt"),
          Row(
            children: [
              Text("\$ 175.00"),

            ],
          )
        ],
      ),
    );
  }
}
