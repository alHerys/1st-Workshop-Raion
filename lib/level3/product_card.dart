import 'package:flutter/material.dart';
import 'package:workshop_1/level3/detail_screen.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: .circular(10),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(title),
                Icon(Icons.favorite_border, color: Colors.grey.shade700),
              ],
            ),
            SizedBox(height: 6),
            Text(description),
          ],
        ),
      ),
    );
  }
}
