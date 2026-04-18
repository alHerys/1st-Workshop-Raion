import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Farmers",
          style: TextStyle(fontWeight: .bold, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              spacing: 24,
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Search..',
                    fillColor: Colors.grey,
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
                    color: Colors.grey,
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
                    children: [
                      Container(
                        padding: .all(4),
                        width: 121,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: .circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey),
                            SizedBox(width: 8),
                            Text("Fruits"),
                          ],
                        ),
                      ),
                      Container(
                        padding: .all(4),
                        width: 121,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: .circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey),
                            SizedBox(width: 8),
                            Text("Fruits"),
                          ],
                        ),
                      ),
                  
                      Container(
                        padding: .all(4),
                        width: 121,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: .circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey),
                            SizedBox(width: 8),
                            Text("Fruits"),
                          ],
                        ),
                      ),
                  
                      Container(
                        padding: .all(4),
                        width: 121,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: .circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey),
                            SizedBox(width: 8),
                            Text("Fruits"),
                          ],
                        ),
                      ),
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
        ),
      ),
    );
  }
}
