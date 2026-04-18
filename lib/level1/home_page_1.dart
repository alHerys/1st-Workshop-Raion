import 'package:flutter/material.dart';
import 'package:workshop_1/level1/product_card.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Farmers",
          style: TextStyle(fontWeight: .bold, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: .circular(10),
              ),
            ),
            Text(
              'Browse Products',
              style: TextStyle(fontWeight: .w700, fontSize: 16),
            ),
            Row(
              spacing: 20,
              children: [
                ProductCard(
                  title: 'Berries',
                  description: 'Lorem ipsum dolor sit a met, consectetur',
                ),
                ProductCard(
                  title: 'Tulsi',
                  description: 'Lorem ipsum dolor sit a met, consectetur',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
