import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshop_1/miniproject/category_card.dart';
import 'package:workshop_1/miniproject/product_card.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({super.key});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Explore",
          style: TextStyle(
            color: const Color(0xFF007E2F),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const .only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 24,
            children: [
              Padding(
                padding: const .only(top: 15.0),
                child: TextField(
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
                    hintText: 'Search..',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: .w800,
                      color: Color(0xFF939393),
                    ),
                    border: OutlineInputBorder(borderRadius: .circular(30)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF505050),
                        width: 0.1,
                      ),
                      borderRadius: .circular(30),
                    ),
                    contentPadding: .zero,
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                height: 160,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/hero.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'assets/images/hero.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),

              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 16,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),

              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  spacing: 5,
                  children: [
                    CategoryCard(
                      title: 'Fruits',
                      image: 'assets/images/fruits.png',
                    ),
                    CategoryCard(
                      title: 'Grains',
                      image: 'assets/images/grains.png',
                    ),
                    CategoryCard(
                      title: 'Herbs',
                      image: 'assets/images/herbs.png',
                    ),
                  ],
                ),
              ),

              Text(
                'Browse Products',
                style: TextStyle(fontWeight: .w500, fontSize: 16),
              ),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 280,
                ),
                children: [
                  ProductCard(
                    title: 'Berries',
                    description: 'Berries is a sweet fruit with red color.',
                    image: 'assets/images/berries.png',
                    rating: '4.5 (200)',
                    isFavorite: false,
                  ),
                  ProductCard(
                    title: 'Tulsi',
                    description: 'Leaf of berries is very green and fresh.',
                    image: 'assets/images/tulsi.png',
                    rating: '4.9 (324)',
                    isFavorite: false,
                  ),
                  ProductCard(
                    title: 'Milk',
                    description: 'Milk is a white liquid produced by mammals.',
                    image: 'assets/images/milk.png',
                    rating: '4.5 (672)',
                    isFavorite: false,
                  ),
                  ProductCard(
                    title: 'Tomato',
                    description: 'Is tomato a fruit or a vegetable?',
                    image: 'assets/images/tomato.png',
                    rating: '4.9 (324)',
                    isFavorite: false,
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
