import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
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
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: Column(
                    children: [
                      TicketView(
                        ticket: ticketList[0],
                        isColor: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: AppLayout.getWidth(3) , right: AppLayout.getWidth(19)),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15)),
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
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
