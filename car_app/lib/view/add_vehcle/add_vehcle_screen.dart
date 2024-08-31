import 'package:car_app/view/add_vehcle/widget/cars_sheet.dart';
import 'package:car_app/view/add_vehcle/widget/form_filed.dart';
import 'package:car_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class AddVehcleScreen extends StatefulWidget {
  const AddVehcleScreen({super.key});

  @override
  State<AddVehcleScreen> createState() => _AddVehcleScreenState();
}

class _AddVehcleScreenState extends State<AddVehcleScreen> {

  String  ? selectedCar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(
                      );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black45)),
                      child: const Icon(Icons.arrow_back_ios_new)),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Add Vehicle",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),

            //Form filed start //
            const FormFiled(
                icon: Icons.keyboard_arrow_down, title: "Car Model"),
            const FormFiled(
                icon: Icons.keyboard_arrow_down, title: "Charging type"),
            const FormFiled(
                icon: Icons.keyboard_arrow_down,
                title: "Battery (short 0-60 / long 60-120)"),
             FormFiled(icon: Icons.directions_car, title:selectedCar==null? " Model":selectedCar!,onTap: ()async {
            final data = await  carsSheet(context);
            setState(() {
              selectedCar = data;
            });
            },),
            const FormFiled(icon: Icons.keyboard_arrow_down, title: "UAE"),
            const Row(
              children: [
                Flexible(child: FormFiled(title: "code")),
                SizedBox(
                  width: 10,
                ),
                FormFiled(
                  title: "State",
                  width: 140,
                  icon: Icons.keyboard_arrow_down,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(child: FormFiled(title: "0000")),
              ],
            ),
      const Spacer(),
            GestureDetector(
              onTap: () {
              if(selectedCar!=null){
                selectedCarNotifier.value = selectedCar!;
                Navigator.of(context).pop();
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                  
                  const SnackBar(
     content: Text("Please select car model"),
     duration: Duration(milliseconds: 900),
));
              }
              },
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  
                    color: Color(0xff2A9595),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: const Text(
                  "Add your Vehicle Info",
                  style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
