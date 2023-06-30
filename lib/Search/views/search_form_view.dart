import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/icon_text_from.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchFormView extends StatelessWidget {
  const SearchFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /**
           * Tab View
           */
          const TicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(SizeConfig.blockSizeHorizontal! * 5),

          /**
           * Departure Field.
           */
          const IconTextForm(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(SizeConfig.blockSizeHorizontal! * 4),
          /**
           * Arrival Field.
           */
          const IconTextForm(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(SizeConfig.blockSizeHorizontal! * 5),

          /**
           * Find Ticket Button
           */
          Container(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical! * 2,
                horizontal: SizeConfig.blockSizeHorizontal! * 4),
            width: SizeConfig.blockSizeHorizontal! * 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 2),
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
