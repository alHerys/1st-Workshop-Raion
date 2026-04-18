import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Stack(
            children: [
              Container(
                width: .infinity,
                height: 319,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.only(
                    bottomLeft: .circular(10),
                    bottomRight: .circular(10),
                  ),
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 18),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                Text(
                  "Michael Miller",
                  style: TextStyle(fontWeight: .w600, fontSize: 24),
                ),
                Text(
                  "Lorem ipsum dolor sit a met, consectetur.",
                  style: TextStyle(fontWeight: .w600, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
