import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal! * 5,
                vertical: SizeConfig.safeBlockVertical! * 5),
            children: [
              Gap(SizeConfig.safeBlockHorizontal! * 5),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(SizeConfig.safeBlockHorizontal! * 5),
              const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(SizeConfig.safeBlockHorizontal! * 5),
              Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.safeBlockHorizontal! * 5),
                  child: Column(
                    children: [
                      TicketView(
                        ticket: ticketList[0],
                        isColor: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.safeBlockHorizontal! * 5, top: 1),
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.safeBlockHorizontal! * 3,
                            vertical: SizeConfig.safeBlockHorizontal! * 2),
                        color: Colors.white,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ColumnLayout(
                                  firstText: "Califer",
                                  secondText: "Passenger",
                                  alignment: CrossAxisAlignment.start,
                                  isColor: true,
                                ),
                                ColumnLayout(
                                  firstText: "52221 364869",
                                  secondText: "Passport",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: true,
                                ),
                              ],
                            ),
                            Gap(SizeConfig.safeBlockHorizontal! * 3),
                            const LayoutBuilderWidget(
                              sections: 15,
                              isColor: true,
                              width: 5,
                            ),
                            Gap(SizeConfig.safeBlockHorizontal! * 3),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ColumnLayout(
                                  firstText: "364738 282744",
                                  secondText: "Number of E-ticket",
                                  alignment: CrossAxisAlignment.start,
                                  isColor: true,
                                ),
                                ColumnLayout(
                                  firstText: "B2SG28",
                                  secondText: "Booking code",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: true,
                                ),
                              ],
                            ),
                            Gap(SizeConfig.safeBlockHorizontal! * 3),
                            const LayoutBuilderWidget(
                              sections: 15,
                              isColor: true,
                              width: 5,
                            ),
                            Gap(SizeConfig.safeBlockHorizontal! * 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assest/images/visa.png",
                                          scale: 11,
                                        ),
                                        Text(
                                          "  *** 2463",
                                          style: Styles.headLineStyle3,
                                        )
                                      ],
                                    ),
                                    Gap(SizeConfig.safeBlockHorizontal! * 1),
                                    Text(
                                      "Payment Method",
                                      style: Styles.headLineStyle4,
                                    )
                                  ],
                                ),
                                const ColumnLayout(
                                  firstText: "Rs.126213",
                                  secondText: "Price",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /**
                       * Bar Code
                       */
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0, color: Colors.white),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                  SizeConfig.safeBlockHorizontal! * 5),
                              bottomRight: Radius.circular(
                                  SizeConfig.safeBlockHorizontal! * 5)),
                        ),
                        margin: EdgeInsets.only(
                            right: SizeConfig.safeBlockHorizontal! * 5, top: 1),
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.safeBlockHorizontal! * 3,
                            vertical: SizeConfig.safeBlockHorizontal! * 3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeVertical! * 2),
                          child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: 'https://www.github.com/MrCalifer',
                            drawText: false,
                            color: Styles.textColor,
                            width: SizeConfig.blockSizeVertical! * 90,
                            height: SizeConfig.blockSizeVertical! * 10,
                          ),
                        ),
                      ),
                      Gap(SizeConfig.safeBlockHorizontal! * 5),
                      /**
                       * Ticket view
                       */
                      TicketView(
                        ticket: ticketList[0],
                      )
                    ],
                  )),
            ],
          ),

          /**
           * 2nd child in the stack
           */
          Positioned(
            left: SizeConfig.blockSizeHorizontal! * 8,
            top: SizeConfig.blockSizeVertical! *50,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
            ),
          ),
          Positioned(
            right: SizeConfig.blockSizeHorizontal! * 8,
            top: SizeConfig.blockSizeVertical! *50,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
