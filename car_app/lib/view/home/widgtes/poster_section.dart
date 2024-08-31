import 'package:flutter/material.dart';


class PosterSection extends StatelessWidget {
   final String image;
  const PosterSection({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          const Positioned(
            left: 18,
            bottom: 18,
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 27.3),
                ),
                Text(
                  "Placeholder text commonly",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
