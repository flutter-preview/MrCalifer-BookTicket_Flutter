import 'package:booktickets/Home/views/header_view/header_view.dart';
import 'package:booktickets/Home/views/hotel_view/hotel_view.dart';
import 'package:booktickets/Home/views/search_view/search_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
import 'package:booktickets/Utils/app_info_list.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                //Header View
                const Gap(40),
                const HeaderView(),

                //Search Bar View
                const Gap(25),
                const SearchBarView(),

                // Upcoming Flight View
                const Gap(40),
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
                const Gap(15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: ticketList
                          .map((ticket) => TicketView(ticket: ticket))
                          .toList()),
                ),

                //Hotel View
                const Gap(15),
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
