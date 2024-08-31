import 'package:car_app/view/add_vehcle/add_vehcle_screen.dart';
import 'package:car_app/view/home/widgtes/car_tile.dart';
import 'package:car_app/view/home/widgtes/poster_section.dart';
import 'package:car_app/view/home/widgtes/service_section.dart';
import 'package:car_app/view/home/widgtes/upgrade_card.dart';
import 'package:flutter/material.dart';

import 'package:car_app/view/assets.dart';
import 'package:car_app/view/home/widgtes/top_section.dart';
import 'package:flutter_svg/flutter_svg.dart';


ValueNotifier<String> selectedCarNotifier = ValueNotifier('');
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Images.icontruck,
      Images.icon2,
      Images.icon1,
      Images.icon5,
      Images.icon4,
      Images.icon3,
    ];

    List<String> tileTiles = [
      "Recovery",
      "Boost",
      "Charge",
      "Inspection",
      "Flat tyre",
      "More",
    ];
    List<String> plansTitile = [
      "WattPackage",
      "Kilo Watt Package",
      "Mega Watt Package",
    ];
    return  SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
          child: Column(
            children: [
              const TopSection(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    
                    const SizedBox(height: 16,),
                    ValueListenableBuilder<String>(
                      valueListenable: selectedCarNotifier,
                      builder:( BuildContext context,String car,child)=> Visibility(
                        replacement: const AddYourCarWidget(),
                        visible: car.isNotEmpty,
                        child:  CarTile(
                          carName: car,
                        ))),
      
                    const SizedBox(
                      height: 16,
                    ),
      const UpgradeCardSection(),
                    //service section start
                    TitleGrid(
                      icons: icons,
                      tileTiles: tileTiles,
                      heading: "Service",
                    ),
      
                    //servic section end//
                    const SizedBox(
                      height: 10,
                    ),
                    TitleGrid(
                      icons: icons.sublist(0, 3),
                      tileTiles: plansTitile,
                      heading: "Plans",
                    ),
      
                    //plan sections end,
      
                    //poster sections start
                    const SizedBox(
                      height: 16,
                    ),
                    PosterSection(image: Images.posterImage,),
                        const SizedBox(
                      height: 16,
                    ),
                      PosterSection(image: Images.posterImage2,),
      
                  ],
                ),
              ),
            ],
          ),
        ),
    );
    
  }
}

class AddYourCarWidget extends StatelessWidget {
  const AddYourCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xffDADADA))),
      child: Column(
        children: [
          const Text(
            "You haven't added any cars yet. \n add now.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff7F7F7F)),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.maxFinite,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AddVehcleScreen()));
                },
                child: const Text(
                  "Add your vehicle",
                  style: TextStyle(
                      color: Color(0xff2A9595),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
          )
        ],
      ),
    );
  }
}



