import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                            right: SizeConfig.safeBlockHorizontal! * 5),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Califer",
                                      style: Styles.headLineStyle3,
                                    ),
                                    Gap(AppLayout.getHeight(5)),
                                    Text(
                                      "Passenger",
                                      style: Styles.headLineStyle3,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
