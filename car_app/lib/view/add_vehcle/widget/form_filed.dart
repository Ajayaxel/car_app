import 'package:flutter/material.dart';

class FormFiled extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final IconData ?icon;
  final double ? width;
  const FormFiled({
    super.key,
     this.icon,
     this.onTap,
    required this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        margin: const EdgeInsets.only(top: 18),
        height: 50,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(115, 115, 113, 113)),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
           
            mainAxisAlignment:icon==null?MainAxisAlignment.center: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              Visibility(
                visible: icon!=null,
                child: Icon(
                  icon,
                  color: const Color(0xff2A9595),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
