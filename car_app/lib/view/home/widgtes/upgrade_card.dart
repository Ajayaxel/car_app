import 'package:car_app/view/assets.dart';
import 'package:car_app/view/home/widgtes/main_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpgradeCardSection extends StatelessWidget {
  const UpgradeCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Active Packages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          margin: const EdgeInsets.symmetric(vertical: 16),
          height: 90,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: LinearGradient(
                  colors: [ Color(0xff2A9595),Color(0xff04CCCC),])),
          child: Row(
          
            children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(Images.notes)),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Free plan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "No of requests : 0",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.62),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Manage plan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
                  onPressed: () {},
                  child: const Text(
                    'Upgrade',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
