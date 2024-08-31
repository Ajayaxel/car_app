  import 'package:car_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';
Future<String ?> carsSheet(BuildContext context)async{
  List<String> cars =[
    "Bmw",
    "Audi",
    "Tesla",
    "Honda",
    "Toyota",
    "Bugatti"
  ];
     return   showModalBottomSheet(
        isScrollControlled: true,
        
          constraints: BoxConstraints(
            maxHeight:  MediaQuery.of(context).size.height *.75
          ),
            context: context,
            builder: (builder){
              return  CarSheetChildWidget(cars: cars);
            }
        );
      }

class CarSheetChildWidget extends StatelessWidget {
  const CarSheetChildWidget({
    super.key,
    required this.cars,
  });

  final List<String> cars;

  @override
  Widget build(BuildContext context) {
    return Container(
                 
      // height: MediaQuery.of(context).size.height/.75,
      // ,
        decoration:  const BoxDecoration(
            color: Colors.white,
            borderRadius:  BorderRadius.only(
                topLeft:  Radius.circular(22),
                topRight:  Radius.circular(22))),
        child:    Column(
          children: [
            const SizedBox(height: 16,),
            const Text("Vehcle Model",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
        
            const Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                height: 50,
                width: double.maxFinite,
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                    
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                itemCount: cars.length,
                itemBuilder: (context, index) =>  GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(cars[index]);
                  },
                  child: Text(cars[index],style: const TextStyle(
                    fontSize: 14,
                  fontWeight: FontWeight.w600
                  ),),
                ),
                 separatorBuilder: (BuildContext context, int index) { 
                  return const Divider();
                  },),
            )
          ],
        ));
  }
}