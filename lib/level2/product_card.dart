import 'package:flutter/material.dart';

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
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: .circular(10),
            ),
          ),
          SizedBox(height: 12),
          Text(title),
          SizedBox(height: 6),
          Text(description),
        ],
      ),
    );
  }
}
