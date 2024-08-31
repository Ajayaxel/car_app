import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainTile extends StatelessWidget {
  final String icon,title;
  const MainTile({
    super.key, required this.icon, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107.67,
      height: 111,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff2A9595).withOpacity(.09),
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(height: 8,),
          Flexible(child: Text(title ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}