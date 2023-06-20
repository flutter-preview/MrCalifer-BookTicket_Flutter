import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketFooterView extends StatelessWidget {
  final String date;
  final String dedepartureTime;
  final int number;
  const TicketFooterView(
      {Key? key,
      required this.date,
      required this.dedepartureTime,
      required this.number})
      : super(key: key);

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
                    date,
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
                    dedepartureTime,
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
                    "$number",
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
