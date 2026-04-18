import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  const CategoryCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(4),
      height: 56,
      width: 121,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: .circular(50),
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: Colors.grey),
          SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}
