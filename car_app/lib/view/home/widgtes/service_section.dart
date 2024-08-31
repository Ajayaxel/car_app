
import 'package:car_app/view/home/widgtes/main_tile.dart';
import 'package:flutter/material.dart';

class TitleGrid extends StatelessWidget {
  const TitleGrid({
    super.key,
    required this.icons,
    required this.tileTiles, required this.heading,
  });

  final List<String> icons;
  final List<String> tileTiles;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Align(
            alignment: Alignment.centerLeft,
            child: Text(
              heading,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700),
            )),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(tileTiles.length, (int index) {
            return MainTile(
                icon: icons[index], title: tileTiles[index]);
          }),
        ),
      ],
    );
  }
}
