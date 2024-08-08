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
            icon: const Icon(Icons.favorite),
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_upload_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 420,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2019/08/07/07/05/woman-4390055_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.zoom_out_map), onPressed: () {  },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Gap(8),
                  Container(
                    width: 96,
                    child: Column(
                        children: List.generate(4, (index) {
                      return Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/01/21/17/45/woman-3946473_1280.jpg",
                                ),
                                fit: BoxFit.cover,
                              )),
                          margin: EdgeInsets.only(bottom: 6),
                        ),
                      );
                    })),
                  )
                ],
              ),
            ),
            const Gap(12),
            const Text(
              "DREAM",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const Gap(8),
            const Text(
              "Tie dye print satin effect shirt",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Gap(8),
            const Row(
              children: [
                Text(
                  "\$ 175.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Gap(16),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text(
                  "4.9",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Gap(16),
            const Text(
              "Select size:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            Row(
              children: [
                ...["XS", "S", "M", "L", "XL"].map((e) {
                  return Container(
                    height: 36,
                    width: 36,
                    margin: const EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    // padding: EdgeInsets.all(8),
                    child: Center(child: Text("$e")),
                  );
                }),
                const Spacer(),
                const Text(
                  "Size Guide",
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(5),
                const Icon(
                  Icons.zoom_out_map,
                  color: Colors.red,
                ),
              ],
            ),
            const Gap(12),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              maxLines: 2,
            ),
            const Gap(12),
            const Spacer(),
            SizedBox(
              height: 58,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Center(
                      child: Text(
                        "Buy now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
                  const Gap(6),
                  Expanded(
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            Gap(8),
                            Text(
                              "Add to cart",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
