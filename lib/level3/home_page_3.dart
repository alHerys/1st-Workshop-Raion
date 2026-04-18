import 'package:flutter/material.dart';
import 'package:workshop_1/level3/category_card.dart';
import 'package:workshop_1/level3/product_card.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

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
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 24,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  hintText: 'Search..',
                  fillColor: Colors.grey.shade400,
                  border: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(8),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: .circular(10),
                ),
              ),

              Text(
                'Categories',
                style: TextStyle(fontWeight: .w700, fontSize: 16),
              ),

              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  spacing: 5,
                  children: [
                    CategoryCard(title: 'Fruits'),
                    CategoryCard(title: 'Grains'),
                    CategoryCard(title: 'Herbs'),
                    CategoryCard(title: 'Milk'),
                  ],
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
              Row(
                spacing: 20,
                children: [
                  ProductCard(
                    title: 'Milk',
                    description: 'Lorem ipsum dolor sit a met, consectetur',
                  ),
                  ProductCard(
                    title: 'Grains',
                    description: 'Lorem ipsum dolor sit a met, consectetur',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
