import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: AppLayout.getHeight(20),
                spreadRadius: AppLayout.getHeight(5))
          ]),
      width: size.width * 0.6, // 60% of the container width
      height: AppLayout.getHeight(360),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppLayout.getHeight(180),
          decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assest/images/${hotel['image']}"))),
        ),
        Gap(AppLayout.getHeight(10)),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiCOlor),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Gap(AppLayout.getHeight(8)),
        Text(
          "\$${hotel['price']}/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiCOlor),
        ),
      ]),
    );
  }
}
