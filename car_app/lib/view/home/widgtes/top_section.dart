import 'package:car_app/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(Images.locationSvg),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        maxLines: 1,
                        text: const TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff8696BB)),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  child: SizedBox(
                                width: 8,
                              )),
                              TextSpan(
                                text: 'Saleh!',
                                style: TextStyle(
                                    color: Color(0xff080808),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ])),
                    const Text(
                      "Dubai Investment ",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 42,
              ),
              SvgPicture.asset(Images.cloud),
              const SizedBox(width: 6,),
              const SizedBox(
                width: 60,
                height: 36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      'Dubai UAE  ',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
                    Flexible(
                        child: Text(
                      '55°F',
                      style: TextStyle(color: Color(0xff231F20),fontWeight: FontWeight.w700,fontSize: 15),
                    ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
