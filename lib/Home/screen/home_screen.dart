import 'package:booktickets/Home/views/header_view/header_view.dart';
import 'package:booktickets/Home/views/hotel_view/hotel_view.dart';
import 'package:booktickets/Home/views/search_view/search_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
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
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(10)),
            child: Column(
              children: [
                //Header View
                Gap(AppLayout.getHeight(40)),
                const HeaderView(),

                //Search Bar View
                Gap(AppLayout.getHeight(25)),
                const SearchBarView(),

                // Upcoming Flight View
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("view all single tapped");
                      },
                      child: Text("View all",
                          style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                          )),
                    )
                  ],
                ),

                // Ticket List View
                Gap(AppLayout.getHeight(15)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: ticketList
                          .map((ticket) => TicketView(ticket: ticket))
                          .toList()),
                ),

                //Hotel View
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotels",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("view all single tapped");
                      },
                      child: Text("View all",
                          style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                          )),
                    )
                  ],
                ),

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
