import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketFooterView extends StatelessWidget {
  const TicketFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
      ),
      padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1 MAY",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Gap(5),
                  Text(
                    "Date",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "08:00 AM",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Gap(5),
                  Text(
                    "Departure Time",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "23",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Gap(5),
                  Text(
                    "Number",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
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
