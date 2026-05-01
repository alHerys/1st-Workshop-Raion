import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        spacing: 8,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFFC4C4C4),
              shape: OvalBorder(),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF505050),
              fontSize: 15,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
