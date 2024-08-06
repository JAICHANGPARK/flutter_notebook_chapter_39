import 'package:flutter/material.dart';

class ECommercePopularItemPage extends StatefulWidget {
  const ECommercePopularItemPage({super.key});

  @override
  State<ECommercePopularItemPage> createState() => _ECommercePopularItemPageState();
}

class _ECommercePopularItemPageState extends State<ECommercePopularItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                    children: [],
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
            )
          ],
        ),
      ),
    );
  }
}
