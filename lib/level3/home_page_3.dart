import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const .only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 24,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 10,
                      bottom: 10,
                      right: 10,
                    ),
                    child: Image.asset('assets/icons/search.png', width: 18),
                  ),
                  filled: true,
                  hintText: 'Search..',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: .bold,
                    color: Color(0xFF505050),
                  ),
                  fillColor: Color(0xFFD9D9D9),
                  border: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(10),
                  ),
                  contentPadding: .zero,
                ),
              ),

              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/hero.png'),
                    fit: .cover,
                  ),
                  borderRadius: .circular(10),
                ),
              ),

              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: .w700,
                  fontSize: 16,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
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
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 260,
                ),
                children: [
                  ProductCard(
                    title: 'Berries',
                    description: 'Berries is a sweet fruit with red color.',
                  ),
                  ProductCard(
                    title: 'Tulsi',
                    description: 'Leaf of berries is very green and fresh.',
                  ),
                  ProductCard(
                    title: 'Milk',
                    description: 'Milk is a white liquid produced by mammals.',
                  ),
                  ProductCard(
                    title: 'Grains',
                    description: 'Grains are small, hard, dry seeds that are .',
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
