import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              Text(
                "\$ 175.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text(
                "4.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Select size:"),
            ],
          ),
          Row(
            children: [
              ...["XS", "S", "M", "L", "XL"].map((e) {
                return Container(
                  height: 36,
                  width: 36,
                  margin: EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  // padding: EdgeInsets.all(8),
                  child: Center(child: Text("$e")),
                );
              }),
              Gap(12),
              Text(
                "Size Guide",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                ),
              ),
              Gap(5),
              Icon(
                Icons.zoom_out_map,
                color: Colors.red,
              ),
            ],
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 64,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Buy now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
