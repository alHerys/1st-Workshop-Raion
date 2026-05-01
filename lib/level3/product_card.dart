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
    return GestureDetector(
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
              color: Color(0xFFD9D9D9),
              borderRadius: .circular(10),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xFF505050),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(Icons.favorite_border),
            ],
          ),
          SizedBox(height: 6),
          Text(
            description,
            style: TextStyle(
              color: const Color(0xFF939393),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
