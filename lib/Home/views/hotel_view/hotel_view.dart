import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal! * 3,
          vertical: SizeConfig.safeBlockVertical! * 2),
      margin: EdgeInsets.only(
          right: SizeConfig.safeBlockVertical! * 2, top: SizeConfig.safeBlockVertical! * 1),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal! * 8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: SizeConfig.safeBlockHorizontal! * 5,
                spreadRadius: SizeConfig.safeBlockHorizontal! * 1)
          ]),
      width: SizeConfig.safeBlockHorizontal! * 50, // 60% of the container width
      // height: SizeConfig.safeBlockHorizontal! * 80,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: SizeConfig.safeBlockVertical! * 25,
          decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal! * 5),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assest/images/${hotel['image']}"))),
        ),
        Gap(SizeConfig.safeBlockHorizontal! * 3),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiCOlor),
        ),
        Gap(SizeConfig.safeBlockHorizontal! * 2),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Gap(SizeConfig.safeBlockHorizontal! * 3),
        Text(
          "\$${hotel['price']}/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiCOlor),
        ),
      ]),
    );
  }
}
