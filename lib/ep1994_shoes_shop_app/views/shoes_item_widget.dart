import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'shoes_detail_page.dart';

class ShoesItemWidget extends StatelessWidget {
  const ShoesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ShoesDetailPage(),
          ),
        );
      },
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
      ),
    );
  }
}
