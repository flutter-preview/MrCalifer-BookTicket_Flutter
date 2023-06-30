import 'package:booktickets/Home/views/header_view/header_view.dart';
import 'package:booktickets/Home/views/hotel_view/hotel_view.dart';
import 'package:booktickets/Home/views/search_view/search_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/view_all.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal! * 5,
                vertical: SizeConfig.safeBlockVertical! * 1),
            child: Column(
              children: [
                //Header View
                Gap(SizeConfig.safeBlockVertical! * 5),
                const HeaderView(),

                //Search Bar View
                Gap(SizeConfig.safeBlockVertical! * 3),
                const SearchBarView(),

                // Upcoming Flight View
                Gap(SizeConfig.safeBlockVertical! * 5),
                const ViewAllSection(
                    bigText: "Upcoming Flights", smallText: "View all"),

                // Ticket List View
                Gap(SizeConfig.safeBlockVertical! * 3),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: ticketList
                          .map((ticket) => TicketView(ticket: ticket))
                          .toList()),
                ),

                //Hotel View
                Gap(SizeConfig.safeBlockVertical! * 5),
                const ViewAllSection(bigText: "Hotels", smallText: "View all"),
                Gap(SizeConfig.safeBlockVertical! * 3),
                // Hotel List View
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((hotel) => HotelView(hotel: hotel))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
