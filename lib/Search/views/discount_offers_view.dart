import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/view_all.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiscountOffersViews extends StatelessWidget {
  const DiscountOffersViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.safeBlockHorizontal! * 90,
      child: Column(
        children: [
          const ViewAllSection(
              bigText: "Discounts & Offers", smallText: "View all"),
          Gap(SizeConfig.safeBlockHorizontal! * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              /**
               * 1st Discount Card
               */
              Container(
                width: SizeConfig.safeBlockHorizontal! * 42,
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 2,
                    vertical: SizeConfig.blockSizeHorizontal! * 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                    borderRadius:
                        BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 5)),
                child: Column(
                  children: [
                    Container(
                      height: SizeConfig.blockSizeHorizontal! * 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 3),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assest/images/sit.jpg"))),
                    ),
                    Gap(SizeConfig.blockSizeHorizontal! * 3),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),

              /**
               * 2nd Discount Card
               */
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 44,
                        // height: SizeConfig.blockSizeVertical! * 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 5)),
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.blockSizeHorizontal! * 5,
                            horizontal: SizeConfig.blockSizeHorizontal! * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(SizeConfig.blockSizeHorizontal! * 3),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 7),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(SizeConfig.blockSizeHorizontal! * 5),
                  /**
                   * 3rd Discount Card
                   */
                  Container(
                    width: SizeConfig.blockSizeHorizontal! * 44,
                    // height: SizeConfig.blockSizeHorizontal! * 40,
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical! * 3,
                        horizontal: SizeConfig.blockSizeHorizontal! * 3),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius:
                            BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 4)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(SizeConfig.blockSizeHorizontal! * 3),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 40)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 30))
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
