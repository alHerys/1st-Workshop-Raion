import 'package:flutter/material.dart';

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
                Expanded(
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
                      Text('Berries'),
                      SizedBox(height: 6),
                      Text('Lorem ipsum dolor sit a met, consectetur'),
                    ],
                  ),
                ),
                Expanded(
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
                      Text('Tulsi'),
                      SizedBox(height: 6),
                      Text('Lorem ipsum dolor sit a met, consectetur'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
