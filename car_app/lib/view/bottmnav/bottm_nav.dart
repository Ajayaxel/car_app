import 'package:car_app/view/assets.dart';
import 'package:car_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottmNav extends StatelessWidget {
  const BottmNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   extendBodyBehindAppBar: true,
       backgroundColor: const Color(0xffFAFAFA),
      body: const HomeScreen(),
      extendBody: true,
    
      floatingActionButton: Container(
         height: 59,
        width: 59,
      decoration: BoxDecoration(
        color: const Color(0xff2A9595
          ),
        borderRadius: BorderRadius.circular(30),
        boxShadow:const [BoxShadow(
          color: Color(0xff7FD9D9),
         
        blurRadius: 7.3,
        offset: Offset(0, 3.69),
          spreadRadius: 0
        )]
      ),
        child: Icon(Icons.home ,color: Colors.white,)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 76,
        // color: Colors.cyan.shade400,
        color: Colors.white,
        // shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(Images.bottmnavicon3),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(Images.bottmnavicon1),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(Images.bottmnavicon2),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(Images.bottmnavicon),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
