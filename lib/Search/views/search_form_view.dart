import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_from.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchFormView extends StatelessWidget {
  const SearchFormView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /**
           * Tab View
           */
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(50)),
                color: const Color(0xFFF4F6FD)),
            child: Row(children: [
              /**
               * Airline Ticket
               */
              Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white),
                child: const Center(child: Text("Airline Tickets")),
              ),

              /**
               * Hotels
               */

              Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent),
                child: const Center(child: Text("Hotels")),
              ),
            ]),
          ),
          Gap(AppLayout.getHeight(25)),

          /**
           * Departure Field.
           */
          const IconTextForm(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(20)),
          /**
           * Arrival Field.
           */
          const IconTextForm(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppLayout.getHeight(25)),

          /**
           * Find Ticket Button
           */
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(18)),
            width: size.width * 0.90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0xD91130CE)),
            child: Center(
              child: Text(
                "Find Ticket",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
