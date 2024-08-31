import 'package:car_app/view/assets.dart';
import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  final String carName;
  const CarTile({
    super.key, required this.carName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black.withOpacity(.2)
        )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 16),
      width: double.maxFinite,
      child: Column(
        children: [
           Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(carName,style: const TextStyle(
                    color: Color(0xff363B64),
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),),
                  const SizedBox(height: 6,),
                  const Text('F23 4AP',style: TextStyle(
                color: Color(0xffA098AE),
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),)
                ],
              ),
               
             
            ],
          ),
          Image.asset(Images.car,height: 90,
          width: 264,
          )
        ],
      ),
    
    );
  }
}