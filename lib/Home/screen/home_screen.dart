import 'package:booktickets/Home/views/header_view/header_view.dart';
import 'package:booktickets/Home/views/search_view/search_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_view.dart';
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
                const Gap(40),
                const HeaderView(),
                const Gap(25),
                const SearchBarView(),
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
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          )
        ],
      ),
    );
  }
}
